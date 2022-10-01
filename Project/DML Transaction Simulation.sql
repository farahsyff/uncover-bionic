USE UncoverBionic

-- Transaction Simulation
-- PURCHASE
-- Seorang staff bernama Farsha M membeli bionic ‘Grandi Foot’ sebanyak 6 produk dan 10 bionic ‘Parilla Hand’ dari Organ Supply sebagai supplier pada tanggal 28 Desember 2020. Oleh karena itu, PurchaseID, StaffID, VendorID, dan PTransactionDate diperlukan untuk tabel TrPurchase dan PurchaseID, BionicID yang dibeli, dan kuantitas bionic yang dibeli diperlukan untuk tabel TrPurchaseDetail.

	INSERT INTO TrPurchase VALUES
	('PU016', 'ST001', 'VE004', '2020-12-28')

	INSERT INTO TrPurchaseDetail VALUES
	('PU016', 'BI001', 6),
	('PU016', 'BI009', 10)

-- SALES
-- Seorang customer dengan ID CU009 membeli bionic dari Uncover Bionic dengan nama ‘Puppy Eyes’ sebanyak 4 produk pada tanggal 28 Desember 2020. Transaksi penjualan dengan ID SA016 tersebut ditangani oleh staff bernama Rani Prahesti dengan ID ST006.
-- Maka dari itu, diperlukan data seperti SalesID, StaffID, CustomerID, dan STransactionDate untuk tabel TrSales di database dan data SalesID, BionicID yang dibeli, kuantitas pembelian bionic untuk tabel TrSalesDetail di database UncoverBionic.
	
	INSERT INTO TrSales VALUES
	('SA016', 'ST006', 'CU009', '2020-12-28')

-- serta data SalesID, BionicID yang dibeli customer, dan kuantitas pembelian bionic untuk tabel TrSalesDetail di database UncoverBionic.
	
	INSERT INTO TrSalesDetail VALUES
	('SA016', 'BI008', 4)