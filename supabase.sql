-- Jalankan di Supabase: SQL Editor > New query > Run
create table if not exists lp_state (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz default now()
);
alter table lp_state enable row level security;

-- Semua orang boleh MELIHAT.
create policy "public read" on lp_state for select using (true);

-- Hanya admin (user yang login) yang boleh MENGUBAH.
create policy "admin insert" on lp_state for insert to authenticated with check (id = 'main');
create policy "admin update" on lp_state for update to authenticated using (id = 'main') with check (id = 'main');
-- Tidak ada policy delete.
