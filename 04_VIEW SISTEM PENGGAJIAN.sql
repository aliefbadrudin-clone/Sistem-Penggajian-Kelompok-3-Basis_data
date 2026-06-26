-- H. 2 VIEW
-- 1. View Informasi Penggajian Lengkap Karyawan
CREATE VIEW vw_penggajian_lengkap AS
SELECT
    p.id_penggajian,
    k.id_karyawan,
    k.nama_lengkap,
    d.nama_departemen,
    j.nama_jabatan,
    p.gaji_bersih,
    p.tanggal_bayar,
    p.status_bayar
FROM Penggajian p
INNER JOIN Karyawan k
    ON p.id_karyawan = k.id_karyawan
INNER JOIN Departemen d
    ON k.id_departemen = d.id_departemen
INNER JOIN Jabatan j
    ON k.id_jabatan = j.id_jabatan;
    
SELECT * FROM vw_penggajian_lengkap;

-- 2. View Monitoring Kehadiran Karyawan
CREATE VIEW vw_monitoring_absensi AS
SELECT
    a.id_absensi,
    k.id_karyawan,
    k.nama_lengkap,
    d.nama_departemen,
    a.tanggal,
    a.status_hadir,
    a.keterangan_absensi
FROM Absensi a
INNER JOIN Karyawan k
    ON a.id_karyawan = k.id_karyawan
INNER JOIN Departemen d
    ON k.id_departemen = d.id_departemen;
    
SELECT * FROM vw_monitoring_absensi;
