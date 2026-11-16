# CAT EARTH — GPS + Globe Prototype

Mobile-first prototype for recording cat encounters on a 3D Earth.

## Run

Serve this folder from an HTTPS host (GPS requires a secure context; localhost is also allowed for development). The globe library and Earth textures load from public CDNs, so internet access is required.

## Included
- Responsive centered globe stage with a capped renderer pixel ratio.
- GPS permission request after selecting a cat photo.
- Latitude, longitude, accuracy, timestamp and photo saved together in IndexedDB.
- Cat markers anchored to geographic coordinates on the globe.
- Cat detail view and local delete.

## Important limitations
- Records are stored on this browser/device only; there is no cloud sync yet.
- GPS can be inaccurate, especially indoors. This A-mode prototype requires a successful GPS fix before saving a record.
- The browser does not automatically strip the photo background or create a cut-out sticker yet; markers currently use a cat emoji.
- Globe library and Earth textures are loaded from CDNs.
