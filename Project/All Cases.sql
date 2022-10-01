USE UncoverBionic

-- 1
SELECT s.StaffId, [Total Purchase] = COUNT(PurchaseID), VendorName
FROM MsStaff s JOIN TrPurchase p ON s.StaffID = p.StaffID JOIN
MsVendor v ON v.VendorID = p.VendorID
WHERE VendorName LIKE '% Tillman'
GROUP BY s.StaffID, v.VendorName
HAVING COUNT(PurchaseID) > 1

-- 2
SELECT s.StaffId, StaffName, StaffSalary, [Total Bionic Sold] = SUM(SalesQty)
FROM MsStaff s JOIN TrSales sa ON s.StaffID = sa.StaffID 
JOIN TrSalesDetail sd ON sa.SalesID = sd.SalesID
WHERE StaffSalary BETWEEN 8000000 AND 10000000
GROUP BY s.StaffID, StaffName, StaffSalary
HAVING SUM(SalesQty) > 10

-- 3
SELECT SalesId, CustomerName, CustomerGender, [Total Quantity Purchased] = SUM(PurchaseQty), [Total Bionic Purchased] = COUNT(BionicID), [Sales Date] = CONVERT(VARCHAR, SalesDate, 107)
FROM MsCustomer c JOIN TrSales sa ON c.CustomerID = sa.CustomerID JOIN MsStaff s ON sa.StaffID = s.StaffID JOIN TrPurchase pu ON pu.StaffID = s.StaffID JOIN TrPurchaseDetail pd ON pd.PurchaseID = pu.PurchaseID
WHERE CustomerGender = 'Female'
GROUP BY SalesID, CustomerName, CustomerGender, SalesDate
HAVING SUM(PurchaseQty) > 7

-- 4
SELECT
	[Purchase Id] = REPLACE(p.PurchaseID, 'PU', 'Purchase '), [Total Purchase Detail] = COUNT(pd.PurchaseID) , [Highest Bionic Price] = MAX(BionicPrice), TypeName
FROM TrPurchase p JOIN TrPurchaseDetail pd ON p.PurchaseID = pd.PurchaseID JOIN MsBionic b ON b.BionicID = pd.BionicID JOIN MsBionicType bt ON b.TypeID = bt.TypeID
WHERE TypeName = 'Hand'
GROUP BY p.PurchaseID, TypeName
HAVING COUNT(pd.PurchaseID) > 1

-- 5
SELECT StaffName, [StaffSalary] = CONCAT('Rp. ', StaffSalary), StaffGender, [PurchaseDate] = CONVERT(CHAR, PurchaseDate, 107), VendorName
FROM MsStaff s JOIN TrPurchase p ON s.StaffID = p.StaffID JOIN MsVendor v ON p.VendorID = v.VendorID, (
	SELECT [AvgStaffSalary] = AVG(StaffSalary)
	FROM MsStaff 
	) sub
WHERE YEAR(PurchaseDate) = 2020 AND StaffSalary > sub.AvgStaffSalary

-- 6
SELECT sa.SalesId, s.StaffId, StaffName, StaffSalary, [StaffGender] = LEFT(StaffGender, 1), BionicName, [Total Sold Price] = BionicPrice * SalesQty, [SalesDate] = CONVERT(CHAR, SalesDate, 106)
FROM TrSales sa JOIN MsStaff s ON sa.StaffID = s.StaffID JOIN TrSalesDetail sd ON sa.SalesID = sd.SalesID JOIN MsBionic b ON sd.BionicID = b.BionicID, (
	SELECT [AvgBionicPrice] = AVG(BionicPrice)
	FROM MsBionic b
	) sub
WHERE BionicPrice * SalesQty > sub.AvgBionicPrice AND StaffSalary < 5000000

-- 7
SELECT [SalesId] = REPLACE(s.SalesID, 'SA', 'Sales '), [SalesDate] = CONVERT(VARCHAR(10), SalesDate, 107), [Total Quantity] = CONCAT(SUM(sd.SalesQty), ' Pc(s)'), b.BionicName, bt.TypeName, bt.TypeDurability
FROM TrSales s
INNER JOIN TrSalesDetail sd ON sd.SalesID = s.SalesID
INNER JOIN MsBionic b ON b.BionicID = sd.BionicID 
INNER JOIN MsBionicType bt ON bt.TypeID = b.TypeID, (
	SELECT [AvgTypeDurability] = AVG(TypeDurability)
	FROM MsBionicType
) sub
WHERE TypeDurability < sub.AvgTypeDurability AND YEAR(SalesDate) > 2016
GROUP BY s.SalesID, SalesDate, BionicName, TypeName, TypeDurability

-- 8
SELECT [VendorID] = REPLACE(p.VendorID, 'VE', 'Vendor '), [Total Quantity] = CONCAT(SUM(pd.PurchaseQty) , ' Pc(s)'),  
mb.BionicID, bt.TypeName, bt.TypeDurability
FROM TrPurchase p
INNER JOIN TrPurchaseDetail pd on pd.PurchaseID = p.PurchaseID
INNER JOIN MsBionic mb on mb.BionicID = pd.BionicID 
INNER JOIN MsBionicType bt on bt.TypeID = mb.TypeID,
(SELECT [MaxBionicStock] = MAX(BionicStock) FROM MsBionic) sub

WHERE TypeName = 'Eye' 
GROUP BY VendorID, mb.BionicID, TypeName, TypeDurability, BionicStock, PurchaseQty, MaxBionicStock
HAVING SUM(pd.PurchaseQty) >= sub.MaxBionicStock
ORDER BY SUM(pd.PurchaseQty) DESC

-- 9
CREATE VIEW LoyalCustomer
AS
	SELECT c.CustomerID, CustomerName, CustomerGender, [Total Transaction] = COUNT(DISTINCT s.SalesID), [Total Bionic Bought] = CONCAT(SUM(sd.SalesQty), ' Pc(s)')
	FROM MsCustomer c JOIN TrSales s ON c.CustomerID = s.CustomerID JOIN TrSalesDetail sd ON s.SalesID = sd.SalesID
	GROUP BY c.CustomerID, CustomerName, CustomerGender
	HAVING COUNT(DISTINCT s.SalesID) > 1 AND SUM(sd.SalesQty) > 10

SELECT * FROM LoyalCustomer

-- 10
CREATE VIEW StaffPurchaseRecap
AS
	SELECT s.StaffID, StaffName, StaffSalary, [Total Purchase Finished] = COUNT(DISTINCT p.PurchaseID), [Total Bionic Purchased] = SUM(pd.PurchaseQty)
	FROM MsStaff s JOIN TrPurchase p ON s.StaffID = p.StaffID JOIN TrPurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
	WHERE YEAR(PurchaseDate) > 2016
	GROUP BY s.StaffID, StaffName, StaffSalary
	HAVING COUNT(DISTINCT p.PurchaseID) > 1

SELECT * FROM StaffPurchaseRecap