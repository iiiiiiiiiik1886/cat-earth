# CAT EARTH 2.0 — Mobile-first prototype

This is the first mobile-first implementation of CAT EARTH. It is a static web app/PWA prototype with an interactive 3D Earth, local cat records, photo upload, location entry, cat profiles, search, collection view, and privacy preference labels.

## Run locally

Because browser geolocation, service workers, and PWA installation require a secure context, run the folder through a local web server rather than opening `index.html` as a file.

### Option A: Python

```bash
cd cat-earth-v2
python3 -m http.server 8000
```

Open `http://localhost:8000` in your browser.

### Option B: Node

```bash
npx serve .
```

## Deploy

Upload the contents of this folder to a static host such as Vercel, Netlify, or GitHub Pages. Use HTTPS. Then open the deployed URL in Safari or Chrome on your phone.

## Current functionality

- Real interactive 3D globe powered by Globe.gl / Three.js loaded from jsDelivr.
- Touch drag to rotate; pinch/scroll and on-screen controls to zoom.
- Cat photo upload and client-side image compression.
- Cat records stored in IndexedDB on the current browser/device.
- Optional GPS location or manually entered coordinates.
- Cat photo markers positioned by latitude/longitude on the globe.
- Cat profile, memo, edit and delete.
- Explore/search and collection screens.
- Mobile bottom navigation and PWA manifest/service worker shell.

## Important limitations

- This prototype has no user accounts, cloud database, cross-device sync, or public social network yet.
- The "future public" setting is only a local preference label; it does not publish a record.
- Sticker markers currently use a circular white-bordered crop of the uploaded photo. Automatic background removal and AI appearance recognition are not implemented yet.
- The globe textures and Globe.gl library require an internet connection on first load.
- Use HTTPS hosting for geolocation and PWA installation. Opening the HTML directly from an iPhone file preview is not a supported runtime.
- Export currently exports record metadata as JSON, not the original photo files. Keep this in mind before clearing browser data.

## Next development step

Connect Supabase Auth, PostgreSQL, and Storage; then replace local-only IndexedDB persistence with authenticated cloud records and enforce privacy with Row Level Security.
