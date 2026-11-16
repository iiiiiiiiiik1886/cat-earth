# CAT EARTH V3.0 — Glass Edition

Mobile-first CAT EARTH prototype with a glassmorphism visual system and five complete navigation pages.

## Run

Serve this folder from HTTPS (GPS requires a secure context; localhost is allowed for development). The 3D globe library and Earth textures load from public CDNs, so an internet connection is required.

## Included
- Five pages: Globe, Explore, Camera, Collection, Profile.
- Responsive centered 3D Earth globe; zoom-in supported, zoom-out capped at the initial view.
- Glassmorphism panels, bottom navigation, cards and modal details.
- Photo selection and client-side image compression before saving.
- Automatic GPS attempt; photo records can still be saved if GPS permission is unavailable, with location left blank.
- Private-by-default records; public/private field stored locally.
- Search and sort in the personal collection; basic exploration of personal records.
- IndexedDB local persistence.

## Cloud status — important
This build is **cloud-ready in product direction, but does not yet upload to Supabase**. The current UI honestly shows `本机模式`; no Supabase project URL, anon key, authentication, Storage bucket or database policies have been supplied/configured. No paid service is activated.

To enable real cloud sync later, create a Supabase project on its then-current free plan, configure Auth, a private Storage bucket, database tables and Row Level Security, then implement authenticated upload/download. Do not put a service-role key in browser code. Keep the bucket private and use authenticated access or short-lived signed URLs.

## Known limitations
- Records are stored in the current browser/device only. Clearing site data may erase them.
- No account registration, cross-device sync, or actual cloud backup yet.
- Public visibility is only a saved preference in this prototype; cross-user public discovery is not active.
- GPS is optional; indoor accuracy can be poor. Public location should be generalized server-side before any public display.
- Globe and Earth textures are fetched from public CDNs.
- Real iPhone performance and visual testing remains necessary.
