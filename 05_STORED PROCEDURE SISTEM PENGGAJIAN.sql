-- I. Stored Procedure: Hitung Total Tunjangan dan Update Penggajian
DELIMITER $$
CREATE PROCEDURE HitungTotalTunjangan(
    IN p_id_penggajian VARCHAR(10)
)
BEGIN
    DECLARE v_total_tunjangan DECIMAL(12,2);
    -- Menghitung total tunjangan
    SELECT COALESCE(SUM(jumlah_tunjangan),0)
    INTO v_total_tunjangan
    FROM Tunjangan
    WHERE id_penggajian = p_id_penggajian;
    -- Mengupdate tabel Penggajian
    UPDATE Penggajian
    SET total_tunjangan = v_total_tunjangan
    WHERE id_penggajian = p_id_penggajian;
END$$
DELIMITER ;
-- 1. Lihat data tunjangan
SELECT * 
FROM Tunjangan
WHERE id_penggajian = 'PGJ002';
-- 2. Jalankan Stored Procedure
CALL HitungTotalTunjangan('PGJ002');
-- 3. Lihat hasil update
SELECT
    id_penggajian,
    total_tunjangan
FROM Penggajian
WHERE id_penggajian = 'PGJ002';
