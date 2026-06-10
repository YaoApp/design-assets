# Design Assets

> Static asset registry for [Design Agent](https://github.com/YaoApp) (`smith.designer`)

## What's here

- **`INDEX.md`** — Master catalog. AI reads this (human-readable Markdown) to discover available assets
- **`fonts/`** — 11 seed typefaces (7 EN + 3 ZH + 1 icon) covering 95% of design scenarios
- **`templates/`** — 14 HTML skeletons across web, app, and poster mediums
- **`palettes/`** — 17 color palettes in standard YAML format (12 industry + 2 traditional Chinese + 3 yearly)
- **`designs/`** — 15 curated design schemes organized by year, with manifest.yml + design-spec.css
- **`preview-server/`** — preview-server distribution (Node.js static server with live reload)

## How it works

1. Design Agent starts → downloads `INDEX.md` (~5KB)
2. When a font/template/palette is needed → checks local cache → downloads from `raw.githubusercontent.com` if missing
3. Assets update independently of agent deploys — just push to this repo and bump the version

## Directory structure

```
YaoApp/design-assets/
├── INDEX.md                     # Master asset index
├── README.md
├── fonts/                       # 11 seed typefaces
├── templates/                   # HTML skeletons (web/app/poster)
├── palettes/                    # Color palettes in YAML
│   ├── 2024/
│   ├── 2025/
│   ├── 2026/
│   └── traditional/
├── designs/                     # Design schemes
│   ├── 2024/
│   ├── 2025/
│   └── 2026/
└── preview-server/              # Preview server dist
```

## Versioning

INDEX.md version follows semver. Bump when adding/removing assets.

## License

MIT
