# Panduan alur penelitian berbasis Markdown dan Git

Repositori ini adalah **bahan tutorial umum** untuk memulai, menulis, memeriksa, dan mencatat versi pekerjaan penelitian. Isinya contoh buatan untuk latihan. Tidak ada naskah, sumber, atau data dari proyek penelitian pribadi.

## Mulai di sini

1. Pada macOS, jalankan `bash alat/pasang-macos.sh --gui` dari root repositori, lalu buka Terminal baru dan jalankan `bash alat/periksa.sh`. Baca [daftar alat](PERKAKAS.md) untuk rincian.
2. Ikuti [latihan Git](PANDUAN-GIT.md) untuk membuat perubahan dan commit.
3. Buat folder penelitian sendiri dengan `bash alat/proyek-baru.sh /jalur/proyek-baru`. Buka [contoh proyek](contoh-proyek/README.md) dan [panduan alat kerja](alat/README.md) untuk ekspor, OCR, dan sitasi.
4. Kerjakan tahapan di bawah dan simpan setiap tahap yang sudah diperiksa sebagai commit terpisah.

## Alur penelitian

| Tahap | Yang dikerjakan | Hasil yang dicatat |
|---|---|---|
| 1. Rumuskan | Tulis pertanyaan, tujuan, batasan, dan rencana metode. | `03-PERENCANAAN/BRIEF.md` |
| 2. Kumpulkan | Simpan sumber asli secara sah; catat penulis, judul, tahun, URL atau lokasi, dan tanggal akses bila relevan. | `07-REFERENSI/DAFTAR-SUMBER.md` |
| 3. Baca dan uji | Baca bagian relevan; pisahkan isi sumber, ringkasan, dan penilaian Anda. Periksa halaman dan konteks kutipan. | Catatan sumber dengan nomor halaman yang benar |
| 4. Tulis | Susun argumen di Markdown. Tautkan setiap klaim penting ke sumber yang telah diperiksa. | `02-NASKAH/draf.md` |
| 5. Tinjau | Periksa dukungan klaim, kutipan, metode, bahasa, dan kebutuhan etika atau izin data. | Revisi yang jelas di `git diff` |
| 6. Terbitkan keluaran | Buat DOCX atau PDF dari naskah setelah isinya siap. Periksa tampilan hasil. | Berkas keluaran, dibuat ulang bila naskah berubah |

Git mencatat perubahan **berkas yang dimasukkan ke commit**. Ia bukan pengganti cadangan sumber asli, data sensitif, atau basis data pengelola referensi. Jangan unggah data peserta penelitian, dokumen berlisensi terbatas, kata sandi, atau bahan yang belum diizinkan untuk dibagikan.

Folder `alat/` tersedia saat repositori di-clone. Skrip pemasangan memasang program di komputer pengguna; skrip kerja menjalankan program itu pada berkas yang dipilih. Hasil OCR ditulis ke `.baru.md` agar dapat diperiksa sebelum dipakai.

## Struktur latihan

```text
contoh-proyek/
├── README.md
├── 01-SUMBER/README.md
├── 02-NASKAH/draf.md
├── 03-PERENCANAAN/
│   ├── BRIEF.md
│   └── rencana.md
├── 06-KELUARAN/README.md
└── 07-REFERENSI/DAFTAR-SUMBER.md
```

Contoh sengaja tidak berisi klaim akademik atau sitasi nyata. Isi dengan sumber yang Anda periksa sendiri.

## Memakai repositori ini bersama orang lain

Repositori publik ini dapat diambil dengan:

```bash
git clone https://github.com/SamsunAcun/panduan-alur-penelitian.git
cd PANDUAN-ALUR-PENELITIAN
```

Nama folder hasil `clone` dapat berbeda jika Anda memilih nama sendiri.
