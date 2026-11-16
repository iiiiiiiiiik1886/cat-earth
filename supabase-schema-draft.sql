-- CAT EARTH V3.0: draft schema only; not applied to a Supabase project.
-- Never expose the service_role key in a browser app.

create table if not exists public.cat_records (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null default '未命名猫咪',
  memo text not null default '',
  photo_path text not null,
  latitude double precision,
  longitude double precision,
  location_accuracy_m integer,
  privacy text not null default 'private' check (privacy in ('private','public')),
  created_at timestamptz not null default now()
);

alter table public.cat_records enable row level security;

create policy "Users can read their own cat records"
on public.cat_records for select to authenticated
using (auth.uid() = user_id);

create policy "Users can insert their own cat records"
on public.cat_records for insert to authenticated
with check (auth.uid() = user_id);

create policy "Users can update their own cat records"
on public.cat_records for update to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete their own cat records"
on public.cat_records for delete to authenticated
using (auth.uid() = user_id);

-- Create a PRIVATE Storage bucket named `cat-photos` in Supabase Dashboard.
-- Storage object path convention: <auth.uid()>/<record-id>.jpg
-- Then add Storage policies scoped to the authenticated user's first folder segment.
-- Public discovery must use a separate, privacy-safe server query that returns
-- generalized location only; never expose private coordinates or private photo paths.
