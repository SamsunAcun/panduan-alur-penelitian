# Setup penelitian sekali perintah dengan AI

Salin seluruh teks di bawah ke AI **yang dapat menjalankan Terminal dan mengelola berkas di komputer Anda**. Prompt ini untuk macOS. AI yang hanya dapat membalas chat tidak dapat memasang program; gunakan [panduan langkah demi langkah](MULAI-DI-SINI.md) dalam keadaan itu.

```text
Saya ingin menyiapkan lingkungan penelitian di macOS ini dari awal sampai siap dipakai. Kerjakan setup secara berurutan dengan akses Terminal dan berkas lokal. Repositori publik yang harus dipakai:
https://github.com/SamsunAcun/panduan-alur-penelitian

Gunakan ~/alat-penelitian untuk repositori alat dan ~/riset-saya untuk proyek baru. Jangan menyentuh folder penelitian lain, jangan mengunggah berkas saya, dan jangan menimpa folder atau berkas yang sudah ada. Jangan meminta saya menyalin kata sandi ke percakapan; jika macOS meminta autentikasi, biarkan saya mengisinya di dialog sistem.

1. Periksa versi macOS, koneksi internet, Homebrew, dan Git. Jika Homebrew belum ada, ambil petunjuk pemasangan terbaru dari https://brew.sh dan pasang dari sumber resmi itu. Ikuti petunjuk Homebrew untuk mengaktifkan brew di shell. Jika Git belum ada, pasang dengan Homebrew.
2. Clone dengan git clone https://github.com/SamsunAcun/panduan-alur-penelitian.git "$HOME/alat-penelitian". Jika folder itu sudah ada, periksa bahwa ia benar-benar repositori yang sama; gunakan tanpa menghapus pekerjaan lokal. Baca README.md, PERKAKAS.md, alat/README.md, dan aturan di contoh-proyek/ATURAN-KERJA.md sebelum melanjutkan.
3. Dari root repositori jalankan bash alat/pasang-macos.sh --gui. Bila ada kegagalan, baca pesannya, perbaiki penyebabnya, lalu ulangi bagian yang gagal. Jangan melompati pemeriksaan.
4. Pastikan jalur program baru terbaca, lalu jalankan bash alat/periksa.sh. Targetnya semua baris OK, termasuk docling dan bahasa OCR Indonesia (ind). Periksa juga bahwa Zotero dan LibreOffice dapat dibuka.
5. Pasang Better BibTeX ke Zotero dari petunjuk resmi https://retorque.re/zotero-better-bibtex/installation/ jika kamu dapat mengendalikan antarmuka Zotero. Bila langkah aplikasi ini perlu saya klik sendiri, tampilkan langkah klik yang tepat dan catat sebagai langkah manual yang tersisa. Jangan membuat pustaka atau referensi palsu.
6. Jika ~/riset-saya belum ada, jalankan bash alat/proyek-baru.sh "$HOME/riset-saya". Jika sudah ada, periksa dan jangan timpa. Pastikan README.md, ATURAN-KERJA.md, 03-PERENCANAAN/BRIEF.md, 02-NASKAH/draf.md, dan folder 07-REFERENSI tersedia.
7. Jika berkas keluarannya belum ada, uji ekspor dengan bash alat/build.sh "$HOME/riset-saya/02-NASKAH/draf.md" docx "$HOME/riset-saya/06-KELUARAN/uji-setup.docx". Untuk OCR, periksa bahwa Tesseract memiliki bahasa ind dan Docling dapat dijalankan. Jika ada PDF milik saya di 07-REFERENSI, uji satu berkas dengan bash alat/ocr.sh tanpa menimpa hasil lama; jika belum ada PDF, tuliskan satu perintah OCR siap pakai untuk nanti.
8. Beri laporan singkat: apa yang terpasang, hasil alat/periksa.sh, lokasi proyek, hasil uji DOCX/OCR, langkah manual yang masih diperlukan, dan satu langkah pertama untuk mulai mengisi brief. Jangan mengarang keberhasilan; tampilkan kegagalan yang belum teratasi.

Kerjakan seluruh langkah yang bisa kamu jalankan sekarang. Bertanya hanya jika macOS atau aplikasi meminta tindakan yang memang harus dilakukan oleh saya.
```

Pemasang macOS memasang alat baris perintah, Zotero, dan LibreOffice. Better BibTeX dipasang **di dalam Zotero** melalui berkas plugin, sehingga langkah itu mungkin perlu interaksi dengan jendela Zotero. Setup ini menyiapkan alat dan proyek kosong; topik, sumber, dan keputusan penelitian tetap diisi setelahnya.
