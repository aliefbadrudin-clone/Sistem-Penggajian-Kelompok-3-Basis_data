-- =========================================
-- B. DML
-- ==========================================

-- 1. DEPARTEMEN
-- ==========================================
INSERT INTO Departemen
(id_departemen, nama_departemen, lokasi, kode_dept)
VALUES
('D001', 'Sumber Daya Manusia', 'Gedung A Lt.2', 'HR'),
('D002', 'Keuangan', 'Gedung B Lt.1', 'FIN'),
('D003', 'Teknologi Informasi', 'Gedung C Lt.3', 'IT'),
('D004', 'Pemasaran', 'Gedung A Lt.1', 'MKT'),
('D005', 'Operasional', 'Gedung D Lt.1', 'OPS');

SHOW CREATE TABLE Departemen;
-- ============================================
-- 2. JABATAN
-- ============================================
INSERT INTO Jabatan
(id_jabatan, nama_jabatan, level_jabatan, gaji_pokok_min, gaji_pokok_max)
VALUES
('J001', 'Direktur', 'Level 5', 15000000, 25000000),
('J002', 'Manajer', 'Level 4', 8000000, 15000000),
('J003', 'Supervisor', 'Level 3', 5000000, 8000000),
('J004', 'Staf Senior', 'Level 2', 3500000, 5500000),
('J005', 'Staf Junior', 'Level 1', 2500000, 3500000),
('J006', 'Analis Data', 'Level 3', 5000000, 8500000),
('J007', 'Programmer', 'Level 3', 5500000, 9000000);
-- =============================================================


-- =============================================================
-- 3. KARYAWAN
INSERT INTO Karyawan
(id_karyawan, nik, nama_lengkap, tanggal_lahir, jenis_kelamin, alamat, no_telepon, tanggal_masuk, status_aktif, id_departemen, id_jabatan)
VALUES
('K001','3301010101800001','Ahmad Fauzi','1980-01-01','L','Jl. Merdeka No.1, Purwokerto','081200001111','2018-03-01','Aktif','D001','J002'),
('K002','3301010201850002','Siti Rahayu','1985-02-02','P','Jl. Sudirman No.5, Purwokerto','081200002222','2019-05-15','Aktif','D002','J004'),
('K003','3301010301900003','Budi Santoso','1990-03-03','L','Jl. Pemuda No.10, Banyumas','081200003333','2020-01-10','Aktif','D003','J007'),
('K004','3301010401880004','Dewi Lestari','1988-04-04','P','Jl. Veteran No.3, Purwokerto','081200004444','2017-07-01','Aktif','D004','J003'),
('K005','3301010501920005','Eko Prasetyo','1992-05-05','L','Jl. Diponegoro No.8, Banyumas','081200005555','2021-02-01','Aktif','D005','J005'),
('K006','3301010601870006','Fitria Sari','1987-06-06','P','Jl. Gatot Subroto No.12, Purwokerto','081200006666','2016-04-01','Aktif','D001','J003'),
('K007','3301010701950007','Galih Nugroho','1995-07-07','L','Jl. Ahmad Yani No.20, Purbalingga','081200007777','2022-01-15','Aktif','D003','J005'),
('K008','3301010801830008','Heni Purwanti','1983-08-08','P','Jl. Raya Sokaraja No.4, Banyumas','081200008888','2015-09-01','Aktif','D002','J003'),
('K009','3301010901910009','Irfan Maulana','1991-09-09','L','Jl. Dr. Soeparno No.7, Purwokerto','081200009999','2020-06-01','Aktif','D003','J006'),
('K010','3301011001860010','Juwita Ningrum','1986-10-10','P','Jl. Pahlawan No.15, Banyumas','081200010000','2018-11-01','Aktif','D004','J004'),
('K011','3301011101930011','Kurniawan Adi','1993-11-11','L','Jl. Serayu No.6, Purwokerto','081200011111','2021-08-01','Aktif','D005','J005'),
('K012','3301011201840012','Linda Wahyuni','1984-12-12','P','Jl. Raya Baturraden No.9, Banyumas','081200012222','2014-03-01','Aktif','D001','J002'),
('K013','3301011301960013','M. Rizki Pratama','1996-01-13','L','Jl. Kaliurang No.11, Purwokerto','081200013333','2023-03-01','Aktif','D003','J005'),
('K014','3301011401890014','Novi Andriani','1989-02-14','P','Jl. Tentara Pelajar No.2, Banyumas','081200014444','2019-09-01','Aktif','D002','J004'),
('K015','3301011501940015','Oki Hermawan','1994-03-15','L','Jl. Raya Ajibarang No.16, Banyumas','081200015555','2022-06-01','Aktif','D004','J005'),
('K016','3301011601810016','Putri Handayani','1981-04-16','P','Jl. Mayjend Sungkono No.5, Purwokerto','081200016666','2012-01-01','Aktif','D001','J001'),
('K017','3301011701970017','Raka Saputra','1997-05-17','L','Jl. Raya Cilacap No.3, Banyumas','081200017777','2023-08-01','Aktif','D005','J005'),
('K018','3301011801850018','Sri Mulyani','1985-06-18','P','Jl. Let. Jend. Suprapto No.8, Purwokerto','081200018888','2017-12-01','Aktif','D002','J003'),
('K019','3301011901920019','Teguh Wibowo','1992-07-19','L','Jl. Raya Purbalingga No.14, Banyumas','081200019999','2020-10-01','Aktif','D003','J006'),
('K020','3301012001880020','Ulfah Rahmawati','1988-08-20','P','Jl. Raya Somagede No.7, Banyumas','081200020000','2018-05-01','Aktif','D004','J003'),
('K021','3301012101910021','Vino Kurniawan','1991-09-21','L','Jl. Raya Lumbir No.2, Banyumas','081200021111','2019-03-01','Aktif','D005','J004'),
('K022','3301012201960022','Wulandari Dewi','1996-10-22','P','Jl. Raya Sumbang No.5, Banyumas','081200022222','2023-01-01','Aktif','D001','J005'),
('K023','3301012301870023','Xander Pratomo','1987-11-23','L','Jl. Raya Kemranjen No.3, Banyumas','081200023333','2016-08-01','Aktif','D002','J002'),
('K024','3301012401930024','Yuli Susanti','1993-12-24','P','Jl. Raya Gumelar No.10, Banyumas','081200024444','2021-05-01','Aktif','D003','J005'),
('K025','3301012501800025','Zainal Arifin','1980-01-25','L','Jl. Raya Patikraja No.6, Banyumas','081200025555','2010-02-01','Aktif','D004','J002'),
('K026','3301012601940026','Annisa Fitriana','1994-02-26','P','Jl. Raya Karanglewas No.4, Banyumas','081200026666','2022-03-01','Aktif','D005','J005'),
('K027','3301012701830027','Bagus Setiawan','1983-03-27','L','Jl. Raya Kedungbanteng No.8, Banyumas','081200027777','2014-07-01','Aktif','D001','J003'),
('K028','3301012801920028','Citra Melati','1992-04-28','P','Jl. Raya Purwojati No.12, Banyumas','081200028888','2020-09-01','Aktif','D002','J004'),
('K029','3301012901970029','Denny Firmansyah','1997-05-29','L','Jl. Raya Sumpiuh No.9, Banyumas','081200029999','2023-06-01','Aktif','D003','J005'),
('K030','3301013001860030','Esti Rohmah','1986-06-30','P','Jl. Raya Tambak No.3, Banyumas','081200030000','2017-04-01','Aktif','D005','J003');


-- =============================================================
-- 4. KONTRAK
-- =======================================================
INSERT INTO Kontrak
(id_kontrak,id_karyawan,jenis_kontrak,tanggal_mulai,
tanggal_selesai,gaji_pokok,status_kontrak)
VALUES
('KTR001','K001','Tetap','2018-03-01','2028-03-01',10000000,'Aktif'),
('KTR002','K002','Tetap','2019-05-15','2029-05-15',4500000,'Aktif'),
('KTR003','K003','Kontrak','2020-01-10','2026-01-10',6000000,'Aktif'),
('KTR004','K004','Tetap','2017-07-01','2027-07-01',6500000,'Aktif'),
('KTR005','K005','Kontrak','2021-02-01','2025-08-01',2800000,'Aktif'),
('KTR006','K006','Tetap','2016-04-01','2026-04-01',5500000,'Aktif'),
('KTR007','K007','Kontrak','2022-01-15','2024-01-15',2800000,'Aktif'),
('KTR008','K008','Tetap','2015-09-01','2025-09-01',5800000,'Aktif'),
('KTR009','K009','Kontrak','2020-06-01','2026-06-01',5500000,'Aktif'),
('KTR010','K010','Tetap','2018-11-01','2028-11-01',4800000,'Aktif'),
('KTR011','K011','Kontrak','2021-08-01','2025-08-01',2800000,'Aktif'),
('KTR012','K012','Tetap','2014-03-01','2024-03-01',9500000,'Aktif'),
('KTR013','K013','Magang','2023-03-01','2024-03-01',2500000,'Aktif'),
('KTR014','K014','Tetap','2019-09-01','2029-09-01',4600000,'Aktif'),
('KTR015','K015','Kontrak','2022-06-01','2025-06-01',2800000,'Aktif'),
('KTR016','K016','Tetap','2012-01-01','2032-01-01',20000000,'Aktif'),
('KTR017','K017','Magang','2023-08-01','2024-08-01',2500000,'Aktif'),
('KTR018','K018','Tetap','2017-12-01','2027-12-01',5600000,'Aktif'),
('KTR019','K019','Kontrak','2020-10-01','2026-10-01',5700000,'Aktif'),
('KTR020','K020','Tetap','2018-05-01','2028-05-01',6200000,'Aktif'),
('KTR021','K021','Tetap','2019-03-01','2029-03-01',4700000,'Aktif'),
('KTR022','K022','Magang','2023-01-01','2024-01-01',2500000,'Aktif'),
('KTR023','K023','Tetap','2016-08-01','2026-08-01',9000000,'Aktif'),
('KTR024','K024','Kontrak','2021-05-01','2025-05-01',2900000,'Aktif'),
('KTR025','K025','Tetap','2010-02-01','2030-02-01',9200000,'Aktif'),
('KTR026','K026','Kontrak','2022-03-01','2025-03-01',2800000,'Aktif'),
('KTR027','K027','Tetap','2014-07-01','2024-07-01',5400000,'Aktif'),
('KTR028','K028','Tetap','2020-09-01','2030-09-01',4700000,'Aktif'),
('KTR029','K029','Magang','2023-06-01','2024-06-01',2500000,'Aktif'),
('KTR030','K030','Tetap','2017-04-01','2027-04-01',5600000,'Aktif');
-- =====================================================================


-- =====================================================================
-- 5. REKENING BANK

INSERT INTO Rekening_Bank
(id_rekening, id_karyawan, nama_bank, no_rekening, atas_nama, cabang)
VALUES
('RK001','K001','BRI','010101234567890','Ahmad Fauzi','Purwokerto'),
('RK002','K002','BCA','2345678901234','Siti Rahayu','Purwokerto'),
('RK003','K003','Mandiri','1200034567890','Budi Santoso','Purwokerto'),
('RK004','K004','BNI','0345678901234','Dewi Lestari','Purwokerto'),
('RK005','K005','BRI','010145678901234','Eko Prasetyo','Banyumas'),
('RK006','K006','BSI','7145678901234','Fitria Sari','Purwokerto'),
('RK007','K007','BCA','6745678901234','Galih Nugroho','Purbalingga'),
('RK008','K008','BRI','010178901234567','Heni Purwanti','Banyumas'),
('RK009','K009','Mandiri','1200089012345','Irfan Maulana','Purwokerto'),
('RK010','K010','BNI','0456789012345','Juwita Ningrum','Banyumas'),
('RK011','K011','BCA','6712345678901','Kurniawan Adi','Purwokerto'),
('RK012','K012','BRI','010101111222333','Linda Wahyuni','Banyumas'),
('RK013','K013','BCA','6734567890123','M. Rizki Pratama','Purwokerto'),
('RK014','K014','Mandiri','1200054321098','Novi Andriani','Banyumas'),
('RK015','K015','BNI','0412345678901','Oki Hermawan','Banyumas'),
('RK016','K016','BCA','6798765432109','Putri Handayani','Purwokerto'),
('RK017','K017','BRI','010198765432109','Raka Saputra','Banyumas'),
('RK018','K018','BSI','7198765432109','Sri Mulyani','Purwokerto'),
('RK019','K019','Mandiri','1200065432109','Teguh Wibowo','Banyumas'),
('RK020','K020','BNI','0487654321098','Ulfah Rahmawati','Banyumas'),
('RK021','K021','BRI','010176543210987','Vino Kurniawan','Banyumas'),
('RK022','K022','BCA','6754321098765','Wulandari Dewi','Banyumas'),
('RK023','K023','Mandiri','1200076543210','Xander Pratomo','Banyumas'),
('RK024','K024','BNI','0465432109876','Yuli Susanti','Banyumas'),
('RK025','K025','BRI','010154321098765','Zainal Arifin','Banyumas'),
('RK026','K026','BCA','6743210987654','Annisa Fitriana','Banyumas'),
('RK027','K027','BSI','7143210987654','Bagus Setiawan','Banyumas'),
('RK028','K028','Mandiri','1200087654321','Citra Melati','Banyumas'),
('RK029','K029','BNI','0432109876543','Denny Firmansyah','Banyumas'),
('RK030','K030','BRI','010132109876543','Esti Rohmah','Banyumas');
-- ======================================================

-- =======================================================
-- 6. LEMBUR

INSERT INTO Lembur
(id_lembur,id_karyawan,tanggal_lembur,jumlah_jam,alasan,status_approve,tarif_per_jam)
VALUES
('LBR001','K001','2025-04-08',3,'Penyelesaian laporan bulanan','Approved',25000),
('LBR013','K002','2025-04-22',2,'Persiapan penggajian','Pending',22500),
('LBR002','K003','2025-04-09',2,'Deploy sistem baru','Approved',27500),
('LBR003','K004','2025-04-10',4,'Event pemasaran','Approved',22000),
('LBR004','K006','2025-04-11',2,'Rekrutmen karyawan','Approved',22000),
('LBR014','K007','2025-04-24',3,'Testing aplikasi','Pending',20000),
('LBR005','K008','2025-04-12',3,'Audit keuangan','Approved',23000),
('LBR006','K009','2025-04-13',5,'Maintenance server','Approved',27500),
('LBR015','K010','2025-04-23',2,'Analisis pasar','Pending',21000),
('LBR007','K012','2025-04-14',2,'Koordinasi SDM','Approved',30000),
('LBR008','K018','2025-04-17',3,'Rekonsiliasi data','Approved',22000),
('LBR009','K019','2025-04-18',4,'Pengembangan sistem','Approved',27500),
('LBR010','K020','2025-04-19',2,'Pameran produk','Approved',23000),
('LBR011','K023','2025-04-18',3,'Review laporan keuangan','Approved',28000),
('LBR012','K025','2025-04-21',2,'Koordinasi operasional','Approved',29000);
-- ==============================================================

-- ==============================================================
-- 7. PENGGAJIAN
INSERT INTO Penggajian
(id_penggajian,id_karyawan,periode_bulan,periode_tahun,
total_tunjangan,total_potongan,total_lembur,
gaji_bersih,tanggal_bayar,status_bayar)
VALUES
('PGJ001','K001','April',2025,2500000,1250000,75000,11325000,'2025-04-30','Lunas'),
('PGJ002','K002','April',2025,1200000,600000,0,5100000,'2025-04-30','Lunas'),
('PGJ003','K003','April',2025,1500000,780000,55000,6775000,'2025-04-30','Lunas'),
('PGJ004','K004','April',2025,1700000,850000,88000,7438000,'2025-04-30','Lunas'),
('PGJ005','K005','April',2025,700000,364000,0,3136000,'2025-04-30','Lunas'),
('PGJ006','K006','April',2025,1400000,715000,44000,6229000,'2025-04-30','Lunas'),
('PGJ007','K007','April',2025,700000,364000,60000,3196000,'2025-04-30','Lunas'),
('PGJ008','K008','April',2025,1500000,754000,69000,6615000,'2025-04-30','Lunas'),
('PGJ009','K009','April',2025,1400000,715000,137500,6322500,'2025-04-30','Lunas'),
('PGJ010','K010','April',2025,1200000,624000,0,5376000,'2025-04-30','Lunas'),
('PGJ011','K011','April',2025,700000,364000,0,3136000,'2025-04-30','Lunas'),
('PGJ012','K012','April',2025,2400000,1235000,60000,10725000,'2025-04-30','Lunas'),
('PGJ013','K013','April',2025,625000,325000,0,2800000,'2025-04-30','Lunas'),
('PGJ014','K014','April',2025,1150000,598000,0,5152000,'2025-04-30','Lunas'),
('PGJ015','K015','April',2025,700000,364000,0,3136000,'2025-04-30','Lunas'),
('PGJ016','K016','April',2025,5000000,2600000,0,22400000,'2025-04-30','Lunas'),
('PGJ017','K017','April',2025,625000,325000,0,2800000,'2025-04-30','Lunas'),
('PGJ018','K018','April',2025,1400000,728000,66000,6338000,'2025-04-30','Lunas'),
('PGJ019','K019','April',2025,1425000,741000,110000,6494000,'2025-04-30','Lunas'),
('PGJ020','K020','April',2025,1550000,806000,46000,6990000,'2025-04-30','Lunas'),
('PGJ021','K021','April',2025,1175000,611000,0,5264000,'2025-04-30','Lunas'),
('PGJ022','K022','April',2025,625000,325000,0,2800000,'2025-04-30','Lunas'),
('PGJ023','K023','April',2025,2250000,1170000,84000,10164000,'2025-04-30','Lunas'),
('PGJ024','K024','April',2025,725000,377000,0,3248000,'2025-04-30','Lunas'),
('PGJ025','K025','April',2025,2300000,1196000,58000,10362000,'2025-04-30','Lunas'),
('PGJ026','K026','April',2025,700000,364000,0,3136000,'2025-04-30','Lunas'),
('PGJ027','K027','April',2025,1350000,702000,0,6048000,'2025-04-30','Lunas'),
('PGJ028','K028','April',2025,1175000,611000,0,5264000,'2025-04-30','Lunas'),
('PGJ029','K029','April',2025,625000,325000,0,2800000,'2025-04-30','Lunas'),
('PGJ030','K030','April',2025,1400000,728000,0,6272000,'2025-04-30','Lunas');
-- =============================================================

-- =============================================================
-- 8. TUNJANGAN
INSERT INTO Tunjangan
(id_tunjangan,id_penggajian,jenis_tunjangan,jumlah_tunjangan,keterangan_tunjangan)
VALUES
('TJ001','PGJ001','Tunjangan Jabatan',1500000,'Sesuai jabatan'),
('TJ002','PGJ002','Tunjangan Makan',600000,'Biaya makan'),
('TJ040','PGJ002','Tunjangan Jabatan',1000000,'Sesuai jabatan'),
('TJ003','PGJ003','Tunjangan Transportasi',400000,'Biaya transport'),
('TJ004','PGJ004','Tunjangan Makan',600000,'Biaya makan'),
('TJ005','PGJ005','Tunjangan Transportasi',400000,'Biaya transport'),
('TJ006','PGJ006','Tunjangan Kesehatan',200000,'Biaya kesehatan'),
('TJ007','PGJ007','Tunjangan Jabatan',700000,'Sesuai jabatan'),
('TJ008','PGJ008','Tunjangan Makan',500000,'Biaya makan'),
('TJ009','PGJ009','Tunjangan Transportasi',300000,'Biaya transport'),
('TJ010','PGJ010','Tunjangan Jabatan',900000,'Sesuai jabatan'),
('TJ011','PGJ011','Tunjangan Makan',500000,'Biaya makan'),
('TJ012','PGJ012','Tunjangan Transportasi',300000,'Biaya transport'),
('TJ013','PGJ013','Tunjangan Makan',400000,'Biaya makan'),
('TJ014','PGJ014','Tunjangan Transportasi',300000,'Biaya transport'),
('TJ015','PGJ015','Tunjangan Jabatan',700000,'Sesuai jabatan'),
('TJ045','PGJ015','Tunjangan Makan',400000,'Biaya makan'),
('TJ016','PGJ016','Tunjangan Makan',400000,'Biaya makan'),
('TJ017','PGJ017','Tunjangan Transportasi',300000,'Biaya transport'),
('TJ018','PGJ018','Tunjangan Jabatan',3500000,'Sesuai jabatan'),
('TJ019','PGJ019','Tunjangan Makan',800000,'Biaya makan'),
('TJ020','PGJ020','Tunjangan Transportasi',700000,'Biaya transport'),
('TJ021','PGJ021','Tunjangan Jabatan',700000,'Sesuai jabatan'),
('TJ050','PGJ021','Tunjangan Makan',400000,'Biaya makan'),
('TJ022','PGJ022','Tunjangan Makan',500000,'Biaya makan'),
('TJ023','PGJ023','Tunjangan Transportasi',300000,'Biaya transport'),
('TJ024','PGJ024','Tunjangan Jabatan',700000,'Sesuai jabatan'),
('TJ025','PGJ025','Tunjangan Makan',500000,'Biaya makan'),
('TJ026','PGJ026','Tunjangan Transportasi',200000,'Biaya transport'),
('TJ027','PGJ027','Tunjangan Jabatan',1400000,'Sesuai jabatan'),
('TJ055','PGJ027','Tunjangan Makan',400000,'Biaya makan'),
('TJ028','PGJ028','Tunjangan Makan',600000,'Biaya makan'),
('TJ029','PGJ029','Tunjangan Transportasi',400000,'Biaya transport'),
('TJ030','PGJ030','Tunjangan Jabatan',1300000,'Sesuai jabatan');
-- ===================================================

-- ===================================================
-- 9. POTONGAN
INSERT INTO Potongan
(id_potongan,id_penggajian,jenis_potongan,jumlah_potongan,keterangan_potongan)
VALUES
('PT001','PGJ001','BPJS Kesehatan',250000,'1% gaji pokok'),
('PT002','PGJ002','BPJS Ketenagakerjaan',200000,'2% gaji pokok'),
('PT003','PGJ003','PPh 21',800000,'Pajak penghasilan'),
('PT004','PGJ004','BPJS Kesehatan',112500,'1% gaji pokok'),
('PT005','PGJ005','BPJS Ketenagakerjaan',90000,'2% gaji pokok'),
('PT006','PGJ006','PPh 21',397500,'Pajak penghasilan'),
('PT007','PGJ007','BPJS Kesehatan',150000,'1% gaji pokok'),
('PT008','PGJ008','BPJS Ketenagakerjaan',120000,'2% gaji pokok'),
('PT009','PGJ009','PPh 21',510000,'Pajak penghasilan'),
('PT010','PGJ010','BPJS Kesehatan',162500,'1% gaji pokok'),
('PT011','PGJ011','BPJS Ketenagakerjaan',130000,'2% gaji pokok'),
('PT012','PGJ012','PPh 21',557500,'Pajak penghasilan'),
('PT013','PGJ013','BPJS Kesehatan',70000,'1% gaji pokok'),
('PT014','PGJ014','BPJS Ketenagakerjaan',56000,'2% gaji pokok'),
('PT015','PGJ015','PPh 21',238000,'Pajak penghasilan'),
('PT016','PGJ016','BPJS Kesehatan',137500,'1% gaji pokok'),
('PT017','PGJ017','BPJS Ketenagakerjaan',110000,'2% gaji pokok'),
('PT018','PGJ018','PPh 21',467500,'Pajak penghasilan'),
('PT019','PGJ019','BPJS Kesehatan',500000,'1% gaji pokok'),
('PT020','PGJ020','BPJS Ketenagakerjaan',400000,'2% gaji pokok'),
('PT021','PGJ021','PPh 21',1700000,'Pajak penghasilan'),
('PT022','PGJ022','BPJS Kesehatan',145000,'1% gaji pokok'),
('PT023','PGJ023','BPJS Ketenagakerjaan',116000,'2% gaji pokok'),
('PT024','PGJ024','PPh 21',493000,'Pajak penghasilan'),
('PT025','PGJ025','BPJS Kesehatan',137500,'1% gaji pokok'),
('PT026','PGJ026','BPJS Ketenagakerjaan',110000,'2% gaji pokok'),
('PT027','PGJ027','PPh 21',467500,'Pajak penghasilan'),
('PT028','PGJ028','BPJS Kesehatan',237500,'1% gaji pokok'),
('PT029','PGJ029','BPJS Ketenagakerjaan',190000,'2% gaji pokok'),
('PT030','PGJ030','PPh 21',807500,'Pajak penghasilan');
-- =======================================

-- =======================================
-- 10. ABSENSI
INSERT INTO Absensi
(id_absensi,id_karyawan,tanggal,jam_masuk,jam_keluar,status_hadir,keterangan_absensi)
VALUES
('ABS001','K001','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS040','K001','2025-04-11',NULL,NULL,'Izin','Izin keluarga'),
('ABS002','K002','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS003','K003','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS004','K004','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS005','K005','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS006','K006','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS007','K007','2025-04-07',NULL,NULL,'Izin','Izin keluarga'),
('ABS008','K008','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS009','K009','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS010','K010','2025-04-07',NULL,NULL,'Sakit','Sakit demam'),
('ABS011','K011','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS012','K012','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS013','K013','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS014','K014','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS045','K014','2025-04-10',NULL,NULL,'Sakit','Sakit Gigi'),
('ABS015','K015','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS016','K016','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS017','K017','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS018','K018','2025-04-07',NULL,NULL,'Alpa','Tidak ada keterangan'),
('ABS019','K019','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS020','K020','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS021','K021','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS022','K022','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS023','K023','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS024','K024','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS025','K025','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS026','K026','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS027','K027','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS028','K028','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS029','K029','2025-04-07',NULL,NULL,'Sakit','Sakit flu'),
('ABS030','K030','2025-04-07','08:00:00','17:00:00','Hadir','-'),
('ABS050','K030','2025-04-12',NULL,NULL,'Alpha','Tidak ada keterangan');

-- =============================================================================
