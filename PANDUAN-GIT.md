# Latihan Git untuk penelitian

Git memberi jejak kapan dan mengapa naskah berubah. Latihan ini memakai berkas contoh yang aman dibagikan.

## 1. Ambil repositori

Ambil repositori tutorial:

```bash
git clone https://github.com/SamsunAcun/panduan-alur-penelitian.git alat-penelitian
cd alat-penelitian
git status
```

Jika menerima salinan folder tanpa `.git`, Anda dapat membaca tutorialnya, tetapi tidak menerima riwayat commit.

Atur identitas commit pada komputer sendiri, jika belum pernah:

```bash
git config --global user.name "Nama Anda"
git config --global user.email "anda@example.com"
```

## 2. Ubah contoh

Buka `contoh-proyek/03-PERENCANAAN/BRIEF.md` dan isi satu pertanyaan penelitian latihan. Lalu periksa:

```bash
git status
git diff -- contoh-proyek/03-PERENCANAAN/BRIEF.md
```

`git diff` menampilkan baris yang ditambah dan dihapus. Periksa isinya sebelum memasukkannya ke riwayat.

## 3. Simpan satu tahap

```bash
git add contoh-proyek/03-PERENCANAAN/BRIEF.md
git diff --cached
git commit -m "Isi pertanyaan penelitian latihan"
git log --oneline -3
```

`git add` memilih berkas untuk commit; `git commit` menyimpan tahapnya. Pilih berkas satu per satu agar data yang tidak boleh dibagikan tidak ikut masuk. Jika salah memilih sebelum commit:

```bash
git restore --staged contoh-proyek/03-PERENCANAAN/BRIEF.md
```

Perintah itu membatalkan pilihan untuk commit dan mempertahankan suntingan di berkas.

## 4. Kerja harian

1. Jalankan `git status` sebelum mulai.
2. Jika bekerja bersama dan folder bersih, jalankan `git pull --ff-only`.
3. Baca sumber dan tulis catatan serta naskah.
4. Periksa `git diff`; catat hanya berkas yang relevan dengan `git add <nama-berkas>`.
5. Periksa `git diff --cached`, lalu commit dengan pesan yang menjelaskan perubahan.
6. Kirim dengan `git push` jika Anda memiliki akses ke repositori bersama.

Jangan menjalankan `git add .` tanpa meninjau seluruh berkas. Hindari `git reset --hard` dan `git clean -fd` untuk merapikan folder karena keduanya dapat membuang pekerjaan lokal.

## 5. Membuat repositori untuk riset Anda sendiri

Buat proyek baru di luar repositori tutorial:

```bash
bash alat/proyek-baru.sh ../riset-saya
cd ../riset-saya
git status
```

Skrip menyalin contoh kosong dan menjalankan `git init`. Isi brief dan naskah sebelum commit pertama. Jangan menaruh repositori baru di dalam repositori tutorial ini. Sebelum mengunggah riset Anda, periksa izin berbagi untuk naskah, sumber, data peserta, dan setiap berkas yang telah masuk riwayat.
