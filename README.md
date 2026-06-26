# Sistem-Penggajian-Kelompok-3-Basis_data
Project Basis Data Sistem Penggajian Karyawan Menggunakan MYSQL

## Deskripsi Project

Sistem Penggajian Karyawan merupakan proyek perancangan dan implementasi basis data menggunakan MySQL yang bertujuan untuk mengelola data penggajian karyawan secara terintegrasi. Basis data ini dirancang untuk mendukung pengelolaan data departemen, jabatan, karyawan, kontrak kerja, rekening bank, absensi, lembur, penggajian, tunjangan, dan potongan sehingga proses penggajian dapat dilakukan secara lebih akurat, konsisten, dan efisien.

Pada implementasinya, basis data telah dilengkapi dengan relasi antar tabel, normalisasi hingga Third Normal Form (3NF), query SQL, VIEW, FUNCTION, dan TRIGGER untuk mendukung kebutuhan pengolahan data.

---

# Anggota Tim

| No | Nama               | NIM       |
| -- | --------------     | --------  |
| 1  | Kinanti Jingga     | K1D024007 |
| 2  | Natasya Jamila     | K1D024016 |
| 3  | Muflihah Qurrota   | K1D024024 |
| 4  | M. Alief Badrudin  | K1D024030 |
| 5  | Hafdsa Syafiya     | K1D024040 |

---

# Cara Menjalankan Script

1. Buka **MySQL Workbench** atau DBMS MySQL lainnya.
2. Buat koneksi ke server MySQL.
3. Import file **BACKUP SISTEM PENGGAJIAN.sql** melalui menu **Server → Data Import**, atau jalankan file SQL menggunakan **File → Open SQL Script**.
4. Jalankan seluruh script hingga proses selesai.
5. Database **sistem_penggajian** akan terbentuk secara otomatis beserta seluruh tabel, relasi, data, VIEW, FUNCTION, dan TRIGGER.
6. Database siap digunakan untuk menjalankan query maupun pengujian sistem.

---

# Entity Relationship Diagram (ERD)

Berikut merupakan Entity Relationship Diagram (ERD) dari Sistem Penggajian Karyawan.

![ERD](ERD.png)

---

# Struktur Folder

```text
Sistem-Penggajian-Kelompok-3-Basis_data/
│
├── README.md
├── BACKUP_SISTEM_PENGGAJIAN.sql
├── Makalah.pdf
├── Presentasi.pptx
├── ERD.jpeg
└── Source Code/
    ├── 01_DDL.sql
    ├── 02_DML.sql
    ├── 03_QUERY.sql
    ├── 04_VIEW.sql
    ├── 05_FUNCTION.sql
    ├── 06_TRIGGER.sql
    └── 07_STORED_PROCEDURE.sql
```
