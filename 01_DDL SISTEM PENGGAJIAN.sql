-- BUAT DATABASE
CREATE DATABASE sistem_penggajian;
USE sistem_penggajian;

-- ====================================================================================================================


-- A. DDL
-- ====================================================================================================================
-- 1. TABEL DEPARTEMEN

CREATE TABLE Departemen (
    id_departemen VARCHAR(10) PRIMARY KEY,
    nama_departemen VARCHAR(100) NOT NULL,
    lokasi VARCHAR(100) NOT NULL,
    kode_dept VARCHAR(20) NOT NULL UNIQUE
);
SHOW CREATE TABLE Departemen;
-- ====================================================================================================================

-- ====================================================================================================================
-- 2. TABEL JABATAN

CREATE TABLE Jabatan (
    id_jabatan VARCHAR(10) PRIMARY KEY,
    nama_jabatan VARCHAR(100) NOT NULL,
    level_jabatan VARCHAR(20) NOT NULL,
    gaji_pokok_min DECIMAL(12,2) NOT NULL,
    gaji_pokok_max DECIMAL(12,2) NOT NULL,

    CHECK (gaji_pokok_min >= 0),
    CHECK (gaji_pokok_max >= gaji_pokok_min)
);
-- =====================================================================================================================


-- =====================================================================================================================
-- 3. TABEL KARYAWAN

CREATE TABLE Karyawan (
    id_karyawan VARCHAR(10) PRIMARY KEY,
    nik VARCHAR(20) NOT NULL UNIQUE,
    nama_lengkap VARCHAR(100) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    jenis_kelamin ENUM('L','P') NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    no_telepon VARCHAR(20) NOT NULL,
    tanggal_masuk DATE NOT NULL,
    status_aktif ENUM('Aktif','Nonaktif') NOT NULL,
    id_departemen VARCHAR(10) NOT NULL,
    id_jabatan VARCHAR(10) NOT NULL,
    
    FOREIGN KEY (id_departemen)
        REFERENCES Departemen(id_departemen),

    FOREIGN KEY (id_jabatan)
        REFERENCES Jabatan(id_jabatan)
);

CREATE INDEX idx_karyawan_departemen
ON Karyawan(id_departemen);

CREATE INDEX idx_karyawan_jabatan
ON Karyawan(id_jabatan);
-- ============================================================


-- ============================================================
-- 4. TABEL KONTRAK

CREATE TABLE Kontrak (
    id_kontrak VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL UNIQUE,
    jenis_kontrak ENUM('Tetap','Kontrak','Magang') NOT NULL,
    tanggal_mulai DATE NOT NULL,
    tanggal_selesai DATE NOT NULL,
    gaji_pokok DECIMAL(12,2) NOT NULL,
    status_kontrak ENUM('Aktif','Berakhir') NOT NULL,

    FOREIGN KEY (id_karyawan)
        REFERENCES Karyawan(id_karyawan),

    CHECK (gaji_pokok > 0),
    CHECK (tanggal_selesai > tanggal_mulai)
);

-- ====================================================================
-- 5. TABEL REKENING BANK
CREATE TABLE Rekening_Bank (
    id_rekening VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL UNIQUE,

    nama_bank VARCHAR(50) NOT NULL,
    no_rekening VARCHAR(30) NOT NULL UNIQUE,
    atas_nama VARCHAR(100) NOT NULL,
    cabang VARCHAR(100) NOT NULL,

    FOREIGN KEY (id_karyawan)
        REFERENCES Karyawan(id_karyawan)
);
-- =============================================================================

-- ==============================================================================
-- 6. TABEL ABSENSI
CREATE TABLE Absensi (
id_absensi VARCHAR(10) PRIMARY KEY,
id_karyawan VARCHAR(10) NOT NULL,
tanggal DATE NOT NULL,
jam_masuk TIME NULL,
jam_keluar TIME NULL,
status_hadir ENUM('Hadir','Izin','Sakit','Alpa','Alpha') NOT NULL,

keterangan_absensi VARCHAR(255),
FOREIGN KEY (id_karyawan)
    REFERENCES Karyawan(id_karyawan)
);

CREATE INDEX idx_absensi_karyawan
ON Absensi(id_karyawan);

-- =======================================================================
-- 7. TABEL LEMBUR

CREATE TABLE Lembur (
id_lembur VARCHAR(10) PRIMARY KEY,
id_karyawan VARCHAR(10) NOT NULL,
tanggal_lembur DATE NOT NULL,
jumlah_jam INT NOT NULL,
alasan VARCHAR(255) NOT NULL,
status_approve ENUM('Pending','Approved','Rejected') NOT NULL,
tarif_per_jam DECIMAL(10,2) NOT NULL,

FOREIGN KEY (id_karyawan)
		REFERENCES Karyawan(id_karyawan),

CHECK (jumlah_jam > 0),
CHECK (tarif_per_jam > 0)

);

CREATE INDEX idx_lembur_karyawan
ON Lembur(id_karyawan);
-- ===================================================================


-- ===================================================================
-- 8. TABEL PENGGAJIAN
CREATE TABLE Penggajian (
    id_penggajian VARCHAR(10) PRIMARY KEY,
    id_karyawan VARCHAR(10) NOT NULL,
    periode_bulan VARCHAR(20) NOT NULL,
    periode_tahun YEAR NOT NULL,
    total_tunjangan DECIMAL(12,2) NOT NULL DEFAULT 0,
    total_potongan DECIMAL(12,2) NOT NULL DEFAULT 0,
    total_lembur DECIMAL(12,2) NOT NULL DEFAULT 0,
    gaji_bersih DECIMAL(12,2) NOT NULL,
    tanggal_bayar DATE NOT NULL,
    status_bayar ENUM('Lunas','Belum Lunas') NOT NULL,

    FOREIGN KEY (id_karyawan)
        REFERENCES Karyawan(id_karyawan)
);

CREATE INDEX idx_penggajian_karyawan
ON Penggajian(id_karyawan);
-- ===========================================================================


-- ============================================================================
-- 9. TABEL TUNJANGAN
CREATE TABLE Tunjangan (
    id_tunjangan VARCHAR(10) PRIMARY KEY,
    id_penggajian VARCHAR(10) NOT NULL,
    jenis_tunjangan VARCHAR(100) NOT NULL,
    jumlah_tunjangan DECIMAL(12,2) NOT NULL,
    keterangan_tunjangan VARCHAR(255),
    FOREIGN KEY (id_penggajian)
        REFERENCES Penggajian(id_penggajian),

    CHECK (jumlah_tunjangan >= 0)
);
-- =====================================
-- 10. TABEL POTONGAN
-- =====================================

CREATE TABLE Potongan (
    id_potongan VARCHAR(10) PRIMARY KEY,
    id_penggajian VARCHAR(10) NOT NULL,
    jenis_potongan VARCHAR(100) NOT NULL,
    jumlah_potongan DECIMAL(12,2) NOT NULL,
    keterangan_potongan VARCHAR(255),
    FOREIGN KEY (id_penggajian)
        REFERENCES Penggajian(id_penggajian),

    CHECK (jumlah_potongan >= 0)
);
-- =========================================
