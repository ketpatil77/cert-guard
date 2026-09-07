create table if not exists public.certificate_analyses (id uuid primary key default gen_random_uuid(),student_name text not null,file_name text not null,perceptual_hash text not null,risk_score integer not null check(risk_score between 0 and 100),ocr_confidence integer,certificate_id text,qr_data text,reasons jsonb not null default '[]',created_at timestamptz not null default now());
create index if not exists certificate_analyses_hash_idx on public.certificate_analyses(perceptual_hash);
alter table public.certificate_analyses enable row level security;
