-- K. 3. Function Hitung Usia Karyawan
DELIMITER $$
CREATE FUNCTION HitungUsia(
    p_tanggal_lahir DATE
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_usia INT;
    SET v_usia = TIMESTAMPDIFF(
        YEAR,
        p_tanggal_lahir,
        CURDATE()
    );
    RETURN v_usia;
END$$
DELIMITER ;

-- 
SELECT
    id_karyawan,
    nama_lengkap,
    tanggal_lahir,
    HitungUsia(tanggal_lahir) AS usia
FROM Karyawan;

SHOW FUNCTION STATUS
WHERE Db = 'sistem_penggajian';
SELECT
    nama_lengkap,
    tanggal_lahir,
    HitungUsia(tanggal_lahir) AS usia
FROM Karyawan
LIMIT 5;
SELECT
    id_karyawan,
    nama_lengkap,
    tanggal_lahir,
    HitungUsia(tanggal_lahir) AS usia
FROM Karyawan
ORDER BY usia DESC
LIMIT 5;    