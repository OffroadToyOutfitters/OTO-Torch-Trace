# OTO Torch Trace

**A free, open-source point digitizing tool for CNC plasma cutters.**  
Built by [Off Road Toy Outfitters](https://offroadtoyoutfitters.com) — made for the shop, shared with the community.

![OTO Torch Trace](https://offroadtoyoutfitters.com/oto-digitizer-preview.png)

---

## What it does

Tired of trying to measure and CAD every part from scratch? OTO Torch Trace lets you:

1. **Jog your CNC** to each corner/point of a template or part
2. **Click Plot Point** to record that XY position
3. **Choose your path style** — straight lines, smooth spline, or filleted corners (your radius)
4. **Send directly to OpenBuilds CONTROL** or download G-Code / DXF

Perfect for plasma cutting parts from cardboard templates, copying existing parts, or digitizing hand-drawn shapes.

---

## Requirements

- **[OpenBuilds CONTROL](https://software.openbuilds.com/)** — free, must be running and connected to your machine
- Any modern browser (Chrome, Edge, Firefox)
- A GRBL-based CNC machine (tested on MKS DLC32 / JD Garage Mini CNC)

---

## Quick Start

### Option A — Use it online (no install)
Go to **[cnc.offroadtoyoutfitters.com](https://cnc.offroadtoyoutfitters.com)**  
*(Demo mode works from anywhere — live machine control requires OpenBuilds CONTROL running locally)*

### Option B — Run locally
```bash
# Just open the file — no server needed
open app/index.html
```

### Option C — Docker
```bash
docker compose up -d
# Open http://localhost:8080
```

---

## How to use

1. Open **OpenBuilds CONTROL** and connect to your machine
2. Open the digitizer in your browser
3. Enter `localhost` in the host field (or your laptop's IP if using a phone/tablet)
4. Click **Connect**
5. Use the **jog controls** (or arrow keys) to position your stylus/probe
6. Click **⊕ Plot Point** (or press **Space**) to record each position
7. Choose path mode: **Lines**, **Spline**, or **Fillet** (set your corner radius)
8. Toggle **Close Path** if cutting an enclosed shape
9. Click **▶ Send to OpenBuilds** — then press Run in OpenBuilds CONTROL to cut

---

## Keyboard shortcuts

| Key | Action |
|-----|--------|
| `Space` | Plot Point |
| `Arrow keys` | Jog (uses current step size) |
| `Escape` | Cancel jog |
| `Ctrl+Z` | Undo last point |

---

## Path modes

| Mode | Description |
|------|-------------|
| **Lines** | Straight lines between each point — sharp corners |
| **Spline** | Smooth curve through all points |
| **Fillet** | Straight lines with rounded corners — set a single radius for all corners |

---

## Connecting from a phone or tablet

OpenBuilds runs on your laptop. To use the digitizer on your phone at the machine:

1. Find your laptop's local IP (e.g. `192.168.1.50`)
2. Enter that IP in the Host field instead of `localhost`
3. Make sure your phone and laptop are on the same WiFi network

---

## Self-hosting (subdomain)

```bash
# Clone the repo
git clone https://github.com/offroadtoyoutfitters/oto-torch-trace.git
cd oto-torch-trace

# Copy env file
cp .env.example .env

# Run with Docker
docker compose up -d
```

Point your subdomain DNS A record to your server and configure your reverse proxy (Nginx, Caddy, Traefik) to forward to port 8080.

---

## Project structure

```
oto-torch-trace/
├── app/
│   └── index.html        # The entire app — single file, vanilla JS
├── nginx/
│   └── nginx.conf        # Production nginx config
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── LICENSE               # MIT
└── README.md
```

---

## Contributing

PRs welcome! This started as an internal tool for our shop and we're sharing it because we think others will find it useful. If you add features, fix bugs, or adapt it for your machine — please share back.

---

## Credits

Built by **Off Road Toy Outfitters** — [offroadtoyoutfitters.com](https://offroadtoyoutfitters.com)  
Powered by **[OpenBuilds CONTROL](https://software.openbuilds.com/)** (GPL v3)  
Designed for the **MKS DLC32 / JD Garage Mini CNC**

---

## License

MIT — free to use, modify, and share. Just keep the copyright notice.  
See [LICENSE](LICENSE) for details.
