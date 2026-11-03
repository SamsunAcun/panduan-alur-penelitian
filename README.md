# Panduan alur penelitian berbasis Markdown dan Git

Repositori ini adalah **bahan tutorial umum** untuk memulai, menulis, memeriksa, dan mencatat versi pekerjaan penelitian. Isinya contoh buatan untuk latihan. Tidak ada naskah, sumber, atau data dari proyek penelitian pribadi.

## Mulai di sini

1. Baca [daftar alat](PERKAKAS.md). Git dan editor teks cukup untuk latihan pertama.
2. Ikuti [latihan Git](PANDUAN-GIT.md) untuk membuat perubahan dan commit.
3. Buka [contoh proyek](contoh-proyek/README.md), lalu salin strukturnya ke folder penelitian milik Anda sendiri.
4. Kerjakan tahapan di bawah dan simpan setiap tahap yang sudah diperiksa sebagai commit terpisah.

## Alur penelitian

| Tahap | Yang dikerjakan | Hasil yang dicatat |
|---|---|---|
| 1. Rumuskan | Tulis pertanyaan, tujuan, batasan, dan rencana metode. | `01-BRIEF.md` |
| 2. Kumpulkan | Simpan sumber asli secara sah; catat penulis, judul, tahun, URL atau lokasi, dan tanggal akses bila relevan. | `03-DAFTAR-SUMBER.md` |
| 3. Baca dan uji | Baca bagian relevan; pisahkan isi sumber, ringkasan, dan penilaian Anda. Periksa halaman dan konteks kutipan. | Catatan sumber dengan nomor halaman yang benar |
| 4. Tulis | Susun argumen di Markdown. Tautkan setiap klaim penting ke sumber yang telah diperiksa. | `02-NASKAH.md` |
| 5. Tinjau | Periksa dukungan klaim, kutipan, metode, bahasa, dan kebutuhan etika atau izin data. | Revisi yang jelas di `git diff` |
| 6. Terbitkan keluaran | Buat DOCX atau PDF dari naskah setelah isinya siap. Periksa tampilan hasil. | Berkas keluaran, dibuat ulang bila naskah berubah |

Git mencatat perubahan **berkas yang dimasukkan ke commit**. Ia bukan pengganti cadangan sumber asli, data sensitif, atau basis data pengelola referensi. Jangan unggah data peserta penelitian, dokumen berlisensi terbatas, kata sandi, atau bahan yang belum diizinkan untuk dibagikan.

## Struktur latihan

```text
contoh-proyek/
├── README.md
├── 01-BRIEF.md
├── 02-NASKAH.md
└── 03-DAFTAR-SUMBER.md
```

Contoh sengaja tidak berisi klaim akademik atau sitasi nyata. Isi dengan sumber yang Anda periksa sendiri.

## Memakai repositori ini bersama orang lain

Setelah pemilik menerbitkan repositori ini dan memberikan URL, pengguna dapat menjalankan:

```bash
git clone <URL-REPOSITORI>
cd PANDUAN-ALUR-PENELITIAN
```

Nama folder hasil `clone` dapat berbeda jika Anda memilih nama sendiri. Saat ini repositori disiapkan secara lokal; URL publik belum diatur.
