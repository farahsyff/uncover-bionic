USE UncoverBionic

INSERT INTO MsStaff VALUES 
('ST001', 'Farsha M', 'farsh@gmail.com', '081234263834', 'Jl Duren Sawit', '2002-03-11', 'Female', 9750000),
('ST002', 'Sarah Syifa', 'rashyw@gmail.com', '081235213834',' Jl Duren Kemangi', '2002-04-11', 'Female', 8750000),
('ST003', 'Jeremy Kevin', 'jere679@gmail.com', '081335263931', 'Jl Sanur Kasih', '2001-11-11', 'Male', 8500000),
('ST004', 'Satria Putra', 'satriaputraa@gmail.com', '081236479882', 'Jl Al Sintan', '1999-09-25', 'Male', 8000000),
('ST005', 'Daffa Ramadhan', 'daffaramdh@gmail.com', '081276591275', 'Jl Merah Barat','2002-10-03', 'Male', 10000000),
('ST006', 'Rani Prahesti', 'raniPra@gmail.com', '081232157812', 'Jl Al Azhar', '2002-08-01', 'Female', 4500000),
('ST007', 'Sani Ramadhita', 'sansan@gmail.com', '087845327615','Jl Ki Hajar Dewantara','2002-06-17', 'Female', 9500000),
('ST008', 'Prasetya Surya', 'pras12@gmail.com', '087866526444','Jl Hj Rahmat','1999-03-07', 'Male', 8500000),
('ST009', 'Joe Mama', 'joem156@gmail.com', '081322652245','Jl Bekasi Raya','2001-12-14', 'Male', 9750000),
('ST010', 'Sandi Safitri', 'sandisaftt@gmail.com', '087813214513','Jl Satrio','2001-05-04', 'Female', 8500000)

INSERT INTO MsCustomer VALUES
('CU001', 'Safira Aninda', '087899997545', 'Jl Melati Sari', 'Female', 'safirs@gmail.com', '2002-12-12'),
('CU002', 'Raynanda Bintang', '081389097645', 'Jl Sari Asi', 'Male', 'ray89@gmail.com', '2002-09-08'),
('CU003', 'Ashira Bita', '087811343212', 'Jl Amarapura', 'Female', 'ashbiit@gmail.com', '2001-01-21'),
('CU004', 'Rafi Nanda', '081288776915', 'Jl Anggrek Kasih', 'Male', 'raafinand@gmail.com', '1999-09-15'),
('CU005', 'Keisha Rizqi', '081232214564', 'Jl Sari Rasa', 'Male', 'krizqq@gmail.com', '1994-06-11'),
('CU006', 'Bunga Lintang', '087826123114', 'Jl Cimulang Raya', 'Female', 'bungalint112@gmail.com', '1997-02-14'),
('CU007', 'Rizal Mahendra', '081298892052', 'Jl Puspitek Raya', 'Male', 'gojal@gmail.com', '2002-03-21'),
('CU008', 'Ryan Muhammad', '081325251890', 'Jl Raya Kasuari', 'Male', 'ryanmuh@gmail.com', '1998-07-28'),
('CU009', 'Nakamoto Sana', '085699991011', 'Jl Kb Sirih', 'Female', 'nakamoto98@gmail.com', '1994-06-01'),
('CU010', 'Raya Rabbani', '081288992145', 'Jl Tuparev', 'Male', 'raayrab@gmail.com', '2000-04-27')

INSERT INTO MsVendor VALUES
('VE001', 'PT Bionic Tillman', '021 798 2878', 'Ruko Tol Biru Blok F9 No. 12 Kota Jakarta Pusat', 'bionic@email.com'),
('VE002', 'Rania Widyanti', '085691332201', 'Jalan Mawar No. 3 Kabupaten Tangerang', 'rwidyanti@supply.com'),
('VE003', 'Toko Jaya Baru', '021 887 7729', 'Gang Selamat No. 99 Kota Bekasi', 'jayabaru@group.com'),
('VE004', 'Organ Supply', '031 561 7777', 'Ruko Greendale Blok A01 No. 19D Kota Surabaya', 'supply@organ.co.id'),
('VE005', 'Rumah Sakit Donor DKI', '021 883 2358', 'Jalan Sudirman No. 276 Kota Jakarta Utara', 'rsdonor@dki.com'),
('VE006', 'Bionisch Corp.', '021 3094 5900', 'Jalan Rawa Jati No. 81 Kota Tangerang', 'bionisch@email.com'),
('VE007', 'Reyhan Mahardin', '081555787715', 'Jalan Purwaraya No. 167 Kota Malang', 'mahardinreyhan@email.com'),
('VE008', 'Bionic Planet', '0251 873 3090', 'Gang Jogja No. 3C Kota Bogor', 'bionicplanet@email.com'),
('VE009', 'All About Bionic', '021 9898 782', 'Ruko Belium Blok A No. 20 Kota Jakarta Selatan', 'allaboutb@gmail.com'),
('VE010', 'Tayazaki Remo', '021 9980 671', 'Jalan Sempoerna No. 106 Kota Bekasi', 'tayazaki@email.com')

INSERT INTO MsBionicType VALUES 
('TY001', 'Hand', 55),
('TY002', 'Hand', 74),
('TY003', 'Foot', 91),
('TY004', 'Eye', 81),
('TY005', 'Arm', 95),
('TY006', 'Foot', 94),
('TY007', 'Leg', 77),
('TY008', 'Arm', 82),
('TY009', 'Eye', 66),
('TY010', 'Leg', 89)

INSERT INTO MsBionic VALUES
('BI001', 'TY003', 'Grandi Foot', 13, '2020-03-21', 12000000),
('BI002', 'TY009', 'Sparkling Eye', 6, '2019-10-30', 8000000),
('BI003', 'TY007', 'Sse Leg', 2, '2019-09-19', 9000000),
('BI004', 'TY002', 'Manner Hand', 5, '2019-11-02', 7000000),
('BI005', 'TY008', 'Argent Arm', 3, '2019-11-26', 7400000),
('BI006', 'TY001', 'Strong Hand', 1, '2019-10-15', 6800000),
('BI007', 'TY006', 'Bare Foot', 7, '2019-10-03', 11700000),
('BI008', 'TY004', 'Puppy Eyes', 2, '2019-12-02', 10000000),
('BI009', 'TY001', 'Parilla Hand', 24, '2019-06-17', 12000000),
('BI010', 'TY005', 'Cheimo Arm', 15, '2020-05-19', 15000000)

SELECT * FROM MsBionicType

INSERT INTO TrPurchase VALUES 
('PU001', 'ST003', 'VE005', '2020-01-03'),
('PU002', 'ST005', 'VE001', '2020-01-13'),
('PU003', 'ST001', 'VE004', '2020-02-11'),
('PU004', 'ST010', 'VE006', '2020-02-24'),
('PU005', 'ST008', 'VE007', '2020-03-03'),
('PU006', 'ST004', 'VE009', '2020-04-16'),
('PU007', 'ST009', 'VE002', '2020-05-01'),
('PU008', 'ST008', 'VE003', '2020-05-18'),
('PU009', 'ST007', 'VE010', '2020-06-15'),
('PU010', 'ST006', 'VE008', '2020-06-20'),
('PU011', 'ST003', 'VE004', '2020-07-10'),
('PU012', 'ST001', 'VE006', '2020-08-11'),
('PU013', 'ST006', 'VE008', '2020-11-01'),
('PU014', 'ST005', 'VE001', '2020-11-11'),
('PU015', 'ST002', 'VE005', '2020-12-28')

SELECT * FROM TrPurchaseDetail
SELECT * FROM MsCustomer

INSERT INTO TrPurchaseDetail VALUES 
('PU001', 'BI002', 25),
('PU002', 'BI004', 3),
('PU002', 'BI006', 5),
('PU002', 'BI010', 7),
('PU003', 'BI001', 2),
('PU003', 'BI009', 10),
('PU004', 'BI002', 31),
('PU005', 'BI006', 1),
('PU006', 'BI004', 6),
('PU006', 'BI007', 2),
('PU007', 'BI003', 2),
('PU007', 'BI009', 4),
('PU008', 'BI008', 30),
('PU009', 'BI007', 2),
('PU010', 'BI005', 1),
('PU011', 'BI002', 25),
('PU011', 'BI003', 1),
('PU011', 'BI008', 32),
('PU011', 'BI010', 1),
('PU012', 'BI001', 2),
('PU012', 'BI005', 1),
('PU013', 'BI002', 32),
('PU013', 'BI006', 4),
('PU013', 'BI010', 3),
('PU014', 'BI009', 2),
('PU015', 'BI010', 2)

INSERT INTO TrSales  VALUES 
('SA001', 'ST002', 'CU005', '2020-01-12'),
('SA002', 'ST001', 'CU001', '2020-02-11'),
('SA003', 'ST006', 'CU004', '2020-03-04'),
('SA004', 'ST007', 'CU006', '2020-03-23'),
('SA005', 'ST001', 'CU007', '2020-05-29'),
('SA006', 'ST004', 'CU009', '2020-06-16'),
('SA007', 'ST005', 'CU002', '2020-07-08'),
('SA008', 'ST009', 'CU003', '2020-07-18'),
('SA009', 'ST010', 'CU010', '2020-09-15'),
('SA010', 'ST009', 'CU008', '2020-10-22'),
('SA011', 'ST003', 'CU004', '2020-11-10'),
('SA012', 'ST005', 'CU006', '2020-11-11'),
('SA013', 'ST007', 'CU008', '2020-12-01'),
('SA014', 'ST008', 'CU001', '2020-12-15'),
('SA015', 'ST002', 'CU005', '2020-12-22')

INSERT INTO TrSalesDetail VALUES
('SA001', 'BI002', 2),
('SA001', 'BI004', 1),
('SA002', 'BI002', 1),
('SA002', 'BI010', 4),
('SA003', 'BI001', 5),
('SA003', 'BI006', 1),
('SA003', 'BI009', 8),
('SA004', 'BI003', 1),
('SA005', 'BI009', 2),
('SA006', 'BI001', 1),
('SA007', 'BI002', 2),
('SA007', 'BI009', 1),
('SA008', 'BI005', 1),
('SA009', 'BI007', 5),
('SA009', 'BI009', 6),
('SA010', 'BI010', 2),
('SA011', 'BI004', 1),
('SA012', 'BI001', 1),
('SA012', 'BI010', 2),
('SA013', 'BI010', 1),
('SA014', 'BI001', 2),
('SA014', 'BI009', 1),
('SA015', 'BI004', 3),
('SA015', 'BI008', 2),
('SA015', 'BI009', 6)