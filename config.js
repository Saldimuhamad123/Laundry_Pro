// Konfigurasi LaundryPro. Kosongkan untuk mode lokal (data hanya di browser masing-masing).
// Isi untuk mode bersama (semua pengunjung melihat & mengedit data yang sama).
window.LP_CONFIG = {
  supabaseUrl: "",   // contoh: "https://abcdxyz.supabase.co"
  supabaseKey: "",   // "anon public" key dari Supabase (Project Settings > API)
  table: "lp_state",
  rowId: "main",
  pollSeconds: 20
};
