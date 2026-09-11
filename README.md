# CertGuard

Explainable certificate fraud screening for student credentials. Upload an image or PDF, enter the registered student name, and receive a 0–100 risk score with reasons.

## V1 checks

- Tesseract.js OCR with registered-name comparison
- Certificate ID extraction
- QR/link detection
- Perceptual duplicate detection (difference hash)
- Lightweight suspicious-editing signal
- Explainable, deterministic fraud score

## Requirements

- Node.js 20 or newer
- npm
- A modern browser

## Run locally

```bash
npm install
npm run dev
```

The UI runs at `http://localhost:5173`; Express runs at `http://localhost:3001`. For production, run `npm run build && npm start`.

Supabase is optional for local evaluation. Apply `supabase/schema.sql` and set `SUPABASE_URL` plus `SUPABASE_SERVICE_ROLE_KEY` to persist analyses. Without them, duplicate matching uses process memory.

## Privacy and limitations

OCR runs in the browser; only extracted signals and text reach the API. CertGuard is a screening aid, not a final authenticity decision. V1 QR status confirms that QR data is readable; issuer-domain allowlisting and live issuer verification belong in V2.
