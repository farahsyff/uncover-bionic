CREATE DATABASE UncoverBionic
USE UncoverBionic
-- DROP DATABASE UncoverBionic

-- begin tran
CREATE TABLE MsStaff(
	StaffID char(5) NOT NULL Primary Key,
	StaffName varchar(50) NOT NULL,
	StaffEmail varchar(50) NOT NULL,
	StaffPhoneNo varchar(14) NOT NULL,
	StaffAddress varchar(100) NOT NULL,
	StaffDOB date NOT NULL,
	StaffGender varchar(7) NOT NULL,
	StaffSalary int NOT NULL,

	CONSTRAINT sIDCheck CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	CONSTRAINT sGender CHECK (StaffGender IN ('Male','Female'))
)

-- begin tran
CREATE TABLE MsCustomer(
	CustomerID char(5) NOT NULL Primary Key,
	CustomerName varchar(50) NOT NULL,
	CustomerPhoneNo varchar(14) NOT NULL,
	CustomerAddress varchar(100) NOT NULL,
	CustomerGender varchar(7) NOT NULL,
	CustomerEmail varchar(50) NOT NULL,
	CustomerDOB date NOT NULL,

	CONSTRAINT cIDCheck CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CONSTRAINT cGender CHECK (CustomerGender IN ('Male','Female'))
)

-- begin tran
CREATE TABLE MsVendor(
	VendorID char(5) NOT NULL Primary Key,
	VendorName varchar(50) NOT NULL,
	VendorPhoneNo varchar(14) NOT NULL,
	VendorAddress varchar(100) NOT NULL,
	VendorEmail varchar(50) NOT NULL,

	CONSTRAINT vIDCheck CHECK (VendorID LIKE 'VE[0-9][0-9][0-9]'),
	CONSTRAINT vAddressCheck CHECK (LEN(VendorAddress) > 10),
	CONSTRAINT vEmailCheck CHECK (VendorEmail LIKE '%@%')
)

-- begin tran
CREATE TABLE MsBionicType(
	TypeID char(5) NOT NULL Primary Key,
	TypeName varchar(10) NOT NULL,
	TypeDurability int NOT NULL,

	CONSTRAINT tIDCheck CHECK (TypeID LIKE 'TY[0-9][0-9][0-9]'),
	CONSTRAINT tNCheck CHECK (TypeName IN ('Hand', 'Foot', 'Leg', 'Arm', 'Eye')),
	CONSTRAINT tDCheck CHECK (TypeDurability >= 50 AND TypeDurability <= 100)
)

-- begin tran
CREATE TABLE MsBionic(
	BionicID char(5) NOT NULL PRIMARY KEY,
	TypeID char(5) REFERENCES MsBionicType ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	BionicName varchar(50) NOT NULL,
	BionicStock int NOT NULL,
	BionicLaunchDate date NOT NULL,
	BionicPrice int NOT NULL,

	CONSTRAINT bIDCheck CHECK (BionicID LIKE 'BI[0-9][0-9][0-9]')
)

-- begin tran
CREATE TABLE TrPurchase(
	PurchaseID char(5) NOT NULL PRIMARY KEY,
	StaffID char(5) FOREIGN KEY REFERENCES MsStaff ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	VendorID char(5) FOREIGN KEY REFERENCES MsVendor ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseDate date NOT NULL,

	CONSTRAINT pIDCheck CHECK (PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
)

-- begin tran
CREATE TABLE TrPurchaseDetail(
	PurchaseID char(5) FOREIGN KEY REFERENCES TrPurchase(PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	BionicID char(5) FOREIGN KEY REFERENCES MsBionic(BionicID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	PurchaseQty int NOT NULL,

	PRIMARY KEY(PurchaseID, BionicID),
	CONSTRAINT pQtyCheck CHECK (PurchaseQty > 0)
)

-- begin tran
CREATE TABLE TrSales(
	SalesID char(5) NOT NULL PRIMARY KEY,
	StaffID char(5) FOREIGN KEY REFERENCES MsStaff ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	CustomerID char(5) FOREIGN KEY REFERENCES MsCustomer ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SalesDate date NOT NULL,

	CONSTRAINT salesIDCheck CHECK (SalesID LIKE 'SA[0-9][0-9][0-9]'),
)

-- begin tran
CREATE TABLE TrSalesDetail(
	SalesID char(5) FOREIGN KEY REFERENCES TrSales ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	BionicID char(5) FOREIGN KEY REFERENCES MsBionic ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SalesQty int NOT NULL,

	PRIMARY KEY(SalesID, BionicID),
	CONSTRAINT sQtyCheck CHECK (SalesQty > 0)
)

SELECT * FROM TrPurchaseDetail
rollback