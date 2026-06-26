-- C. QUERY SEDERHANA

-- 1. Karyawan Aktif yang Masuk Sebelum Tahun 2020
SELECT
    id_karyawan,
    nama_lengkap,
    tanggal_masuk,
    status_aktif
FROM Karyawan
WHERE status_aktif = 'Aktif'
AND tanggal_masuk < '2020-01-01';
-- TUJUAN: Menampilkan karyawan aktif yang memiliki masa kerja lebih dari 5 tahun.

-- 2. Lembur yang Sudah Disetujui dengan Jam Lembur Minimal 3 Jam
SELECT
    id_lembur,
    id_karyawan,
    tanggal_lembur,
    jumlah_jam,
    tarif_per_jam
FROM Lembur
WHERE status_approve = 'Approved'
AND jumlah_jam >= 3
ORDER BY jumlah_jam DESC;
-- Menampilkan lembur yang layak diperhitungkan sebagai lembur signifikan.

-- 3. Penggajian dengan Gaji Bersih Tinggi dan Lembur
SELECT
    id_penggajian,
    id_karyawan,
    gaji_bersih,
    total_lembur
FROM Penggajian
WHERE gaji_bersih > 6000000
AND total_lembur > 0
ORDER BY gaji_bersih DESC;
-- Menampilkan karyawan dengan gaji tinggi yang juga menerima tambahan lembur.

-- 4. Karyawan Tinggal Di Purwokerto
SELECT
    id_karyawan,
    nama_lengkap,
    alamat
FROM Karyawan
WHERE id_departemen IN ('D001','D003')
AND alamat LIKE '%Purwokerto%';


-- ============================================================================
-- D. QUERY JOIN

-- 1. INNER JOIN
SELECT
    k.nama_lengkap,
    d.nama_departemen,
    j.nama_jabatan
FROM Karyawan k
INNER JOIN Departemen d
    ON k.id_departemen = d.id_departemen
INNER JOIN Jabatan j
    ON k.id_jabatan = j.id_jabatan;
    
 -- 2. LEFT JOIN
 SELECT
    k.nama_lengkap,
    d.nama_departemen,
    l.jumlah_jam
FROM Karyawan k
LEFT JOIN Lembur l
    ON k.id_karyawan = l.id_karyawan
LEFT JOIN Departemen d
    ON k.id_departemen = d.id_departemen;
    
-- 3. INNER JOIN
SELECT
    p.id_penggajian,
    k.nama_lengkap,
    d.nama_departemen,
    p.gaji_bersih
FROM Penggajian p
INNER JOIN Karyawan k
    ON p.id_karyawan = k.id_karyawan
INNER JOIN Departemen d
    ON k.id_departemen = d.id_departemen
INNER JOIN Jabatan j
    ON k.id_jabatan = j.id_jabatan;
    
-- 3. Monitoring Kehadiran Karyawan Bermasalah
SELECT
    k.nama_lengkap,
    d.nama_departemen,
    j.nama_jabatan,
    a.tanggal,
    a.status_hadir,
    a.keterangan_absensi
FROM Absensi a
INNER JOIN Karyawan k
    ON a.id_karyawan = k.id_karyawan
INNER JOIN Departemen d
    ON k.id_departemen = d.id_departemen
INNER JOIN Jabatan j
    ON k.id_jabatan = j.id_jabatan
WHERE a.status_hadir IN ('Sakit','Izin','Alpa','Alpha')
ORDER BY a.tanggal;   

-- ============================================
-- 	E. SUBQUERY ATAU CTE
-- 1.  SUBQUERY
-- Menampilkan karyawan yang memiliki gaji bersih lebih tinggi dibandingkan rata-rata gaji seluruh karyawan.
SELECT
    k.id_karyawan,
    k.nama_lengkap,
    p.gaji_bersih
FROM Karyawan k
INNER JOIN Penggajian p
    ON k.id_karyawan = p.id_karyawan
WHERE p.gaji_bersih >
(
    SELECT AVG(gaji_bersih)
    FROM Penggajian
)
ORDER BY p.gaji_bersih DESC; 

-- 2. CTE
-- Menampilkan Total Tunjangan Setiap Karyawan
WITH TotalTunjangan AS
(
    SELECT
        id_penggajian,
        SUM(jumlah_tunjangan) AS total_tunjangan
    FROM Tunjangan
    GROUP BY id_penggajian
)
SELECT
    k.nama_lengkap,
    d.nama_departemen,
    tt.total_tunjangan
FROM TotalTunjangan tt
INNER JOIN Penggajian p
    ON tt.id_penggajian = p.id_penggajian
INNER JOIN Karyawan k
    ON p.id_karyawan = k.id_karyawan
INNER JOIN Departemen d
    ON k.id_departemen = d.id_departemen
ORDER BY tt.total_tunjangan DESC;


-- ======================================
-- F. 1 query dengan fungsi agregat & GROUP BY + HAVING.     
-- Menampilkan Informasi Pengeluaran Gaji Pada Setiap Departemen.
SELECT
    d.nama_departemen,
    COUNT(k.id_karyawan) AS jumlah_karyawan,
    ROUND(AVG(p.gaji_bersih),0) AS rata_rata_gaji,
    SUM(p.gaji_bersih) AS total_pengeluaran_gaji
FROM Departemen d
INNER JOIN Karyawan k
    ON d.id_departemen = k.id_departemen
INNER JOIN Penggajian p
    ON k.id_karyawan = p.id_karyawan
GROUP BY d.nama_departemen
HAVING SUM(p.gaji_bersih) > 30000000
ORDER BY total_pengeluaran_gaji DESC;

