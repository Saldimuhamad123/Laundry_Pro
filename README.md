# LaundryPro Dashboard

Dashboard keuangan & operasional usaha laundry. Satu file HTML, tanpa build, open source (MIT).

## Dua mode

**1. Mode lokal (default)** – data tersimpan di browser masing-masing pengguna. Tidak perlu server.

**2. Mode bersama + login admin** – semua pengunjung bisa **melihat** data yang sama (sinkron tiap ~20 detik) tanpa login. Hanya **admin** yang login yang bisa mengedit.

### Mengaktifkan mode bersama (Supabase, gratis)
1. Buat project di https://supabase.com
2. **SQL Editor**: jalankan isi `supabase.sql`
3. **Authentication > Users > Add user**: buat akun admin (email + password, centang *Auto Confirm User*)
4. **Authentication > Sign In / Providers**: **matikan** "Allow new users to sign up" (penting, agar orang lain tidak bisa mendaftar jadi admin)
5. **Project Settings > API**: salin *Project URL* dan *anon public key* ke `config.js`
6. Deploy. Klik **Login Admin** di pojok kanan atas untuk mengedit.

Keamanan ditegakkan oleh database (Row Level Security), bukan hanya oleh tampilan: tanpa login, permintaan tulis ditolak server.
Kunci *anon* memang publik dan aman selama policy di `supabase.sql` dipakai dan pendaftaran dimatikan.
Untuk admin lebih dari satu, tambahkan user di langkah 3. Tetap simpan cadangan rutin lewat Export Excel.

## Deploy gratis
- **GitHub Pages**: upload semua file ke repo, Settings > Pages > Deploy from branch.
- **Netlify / Vercel / Cloudflare Pages**: drag & drop folder ini.
- Lokal: buka `index.html` langsung di browser.

## Fitur
Dashboard, transaksi, pelanggan, layanan, bahan & biaya, pengeluaran, laporan keuangan, import Excel, dan unduh template dataset.

## Kontribusi
Pull request dipersilakan. Lisensi: MIT.

## Install di HP (Android & iPhone)

Aplikasi ini adalah **PWA**: setelah di-deploy (wajib HTTPS, mis. GitHub Pages), bisa dipasang seperti aplikasi biasa.

- **Android (Chrome):** buka website > menu ⋮ > *Install app* / *Tambahkan ke layar utama*.
- **iPhone (Safari):** buka website > tombol Bagikan > *Tambah ke Layar Utama*. (Harus lewat Safari.)

### File APK Android (opsional)
Tab **Actions > Build APK > Run workflow** di GitHub akan membuat `app-debug.apk` (unduh dari Artifacts).
APK debug cukup untuk dipasang langsung; untuk Play Store perlu APK/AAB bertanda tangan (release).
File ini membungkus aplikasi web, jadi butuh internet untuk memuat font dan pustaka dari CDN bila belum ter-cache.
iPhone tidak memakai APK; distribusi iOS lewat App Store butuh Mac, Xcode, dan akun Apple Developer.
