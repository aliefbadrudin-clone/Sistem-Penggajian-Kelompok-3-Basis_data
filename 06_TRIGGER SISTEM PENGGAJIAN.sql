-- J. Trigger Validasi Absensi
DELIMITER $$
CREATE TRIGGER trg_validasi_absensi
BEFORE INSERT ON Absensi
FOR EACH ROW
BEGIN
    IF NEW.status_hadir = 'Hadir'
       AND (NEW.jam_masuk IS NULL OR NEW.jam_keluar IS NULL)
    THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
        'Karyawan yang hadir wajib memiliki jam masuk dan jam keluar';
    END IF;
END$$
DELIMITER ;
-- Tampilkan TRIGGER
SHOW TRIGGERS;
-- Uji Data Salah
INSERT INTO Absensi
VALUES
(
    'ABS101',
    'K002',
    '2025-04-30',
    NULL,
    NULL,
    'Hadir',
    '-'
);
-- Uji Data Benar
INSERT INTO Absensi
VALUES
(
    'ABS102',
    'K002',
    '2025-04-30',
    '08:00:00',
    '17:00:00',
    'Hadir',
    '-'
);
-- Cek Data
SELECT *
FROM Absensi
WHERE id_absensi IN ('ABS101','ABS102');

