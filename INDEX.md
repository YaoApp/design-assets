# Design Assets Index

> Repository: [YaoApp/design-assets](https://github.com/YaoApp/design-assets)
> Version: 1.0.0
> Updated: 2026-06-10
> Raw Base: https://raw.githubusercontent.com/YaoApp/design-assets/main

Static asset registry for Design Agent (`smith.designer`). AI downloads this file on startup (~5KB),
pulls assets on demand. All paths relative to Raw Base.

---

## Fonts

| Name | Category | Weights | Files | Size |
|------|----------|---------|-------|------|
| Inter | sans-serif | 400, 500, 600, 700, 800 | `fonts/inter/{400,500,600,700,800}.woff2` + subsets + fonts.css | ~244KB |
| Roboto | sans-serif | 400, 500, 700 | `fonts/roboto/{400,500,700}.woff2` + subsets + fonts.css | ~272KB |
| Open Sans | sans-serif | 400, 600, 700 | `fonts/open-sans/{400,600,700}.woff2` + subsets + fonts.css | ~344KB |
| Playfair Display | serif | 400, 700, 900 | `fonts/playfair-display/{400,700,900}.woff2` + subsets + fonts.css | ~116KB |
| DM Sans | sans-serif | 400, 500, 700 | `fonts/dm-sans/{400,500,700}.woff2` + subsets + fonts.css | ~72KB |
| Space Grotesk | sans-serif | 400, 500, 700 | `fonts/space-grotesk/{400,500,700}.woff2` + subsets + fonts.css | ~64KB |
| JetBrains Mono | monospace | 400, 500, 700 | `fonts/jetbrains-mono/{400,500,700}.woff2` + subsets + fonts.css | ~92KB |
| Noto Sans SC | sans-serif | 400, 500, 700 | `fonts/noto-sans-sc/{400,500,700}.woff2` + subsets + fonts.css | ~4.9MB |
| Noto Serif SC | serif | 400, 700 | `fonts/noto-serif-sc/{400,700}.woff2` + subsets + fonts.css | ~6.2MB |
| LXGW WenKai | handwritten | 400, 500 | `fonts/lxgw-wenkai/LXGWWenKai-{Regular,Medium}.ttf` | ~49MB |
| Material Symbols Rounded | icon | 400 (var) | `fonts/material-symbols/MaterialSymbolsRounded.woff2` + fonts.css | ~1.4MB |

Each font directory contains:
- `{weight}.woff2` — Latin subset files with clean weight-based names (primary use for Western text)
- `fonts.css` — Google Fonts CSS response with unicode-range @font-face declarations
- `subsets/` — All subset files (Latin, Latin-ext, Cyrillic, Greek, Vietnamese, etc.) for full coverage

### Font Pairings

| Scenario | EN Heading | EN Body | ZH Heading | ZH Body |
|----------|-----------|---------|------------|---------|
| Enterprise SaaS | Inter 700 | Inter 400 | Noto Sans SC 700 | Noto Sans SC 400 |
| Modern Brand | Space Grotesk 700 | Inter 400 | Noto Sans SC 700 | Noto Sans SC 400 |
| Editorial / Blog | Playfair Display 900 | Open Sans 400 | Noto Serif SC 700 | Noto Sans SC 400 |
| Tech / Dark Mode | Space Grotesk 500 | Inter 400 | Noto Sans SC 500 | Noto Sans SC 400 |
| E-commerce | DM Sans 700 | Inter 400 | Noto Sans SC 700 | Noto Sans SC 400 |
| Warm / Handcraft | DM Sans 500 | Inter 400 | LXGW WenKai 500 | Noto Sans SC 400 |
| Data Dashboard | Roboto 500 | Roboto 400 | Noto Sans SC 500 | Noto Sans SC 400 |
| Mobile App | Roboto 500 | Roboto 400 | Noto Sans SC 500 | Noto Sans SC 400 |

---

## Templates

### Web
| Name | File | Description |
|------|------|-------------|
| blank | `templates/web/blank.html` | Blank page + container + header |
| hero | `templates/web/hero.html` | Hero banner + content sections |
| grid | `templates/web/grid.html` | Grid container + card placeholders |
| form | `templates/web/form.html` | Centered form card |
| list | `templates/web/list.html` | Header + table/filter area |
| detail | `templates/web/detail.html` | Breadcrumb + info sections |

### App
| Name | File | Description |
|------|------|-------------|
| blank | `templates/app/blank.html` | Mobile blank page (375px, touch-target 44px) |
| grid | `templates/app/grid.html` | Mobile card grid |
| form | `templates/app/form.html` | Mobile form page |
| list | `templates/app/list.html` | Mobile list page |
| detail | `templates/app/detail.html` | Mobile detail page |

### Poster
| Name | File | Description |
|------|------|-------------|
| blank | `templates/poster/blank.html` | Poster blank page (800px, vw units) |
| hero | `templates/poster/hero.html` | Poster hero section |
| grid | `templates/poster/grid.html` | Poster grid layout |

---

## Palettes

### 2024
| Name | File | Industry | Style |
|------|------|----------|-------|
| SaaS Blue | `palettes/2024/saas-blue.yml` | saas | enterprise |
| Fintech Green | `palettes/2024/fintech-green.yml` | fintech | enterprise |
| E-commerce Warm | `palettes/2024/ecommerce-warm.yml` | ecommerce | playful |
| Startup Minimal | `palettes/2024/startup-minimal.yml` | startup | minimalist |
| Creative Portfolio | `palettes/2024/creative-portfolio.yml` | creative | editorial |
| Swiss Modern | `palettes/2024/swiss-modern.yml` | creative | swiss-modern |
| Art Deco | `palettes/2024/art-deco.yml` | creative | art-deco |
| Noir | `palettes/2024/noir.yml` | media | noir |
| Industrial | `palettes/2024/industrial.yml` | startup | industrial |
| Brutalist | `palettes/2024/brutalist.yml` | startup | brutalist |

### 2025
| Name | File | Industry | Style |
|------|------|----------|-------|
| AI Landing Dark | `palettes/2025/ai-landing-dark.yml` | saas | tech |
| Healthcare Soft | `palettes/2025/healthcare-soft.yml` | healthcare | soft |
| Food App Warm | `palettes/2025/food-app-warm.yml` | food | playful |
| Media Blog Serif | `palettes/2025/media-blog-serif.yml` | media | editorial |
| Education Kid | `palettes/2025/education-kid.yml` | education | playful |
| Glassmorphism | `palettes/2025/glassmorphism.yml` | saas | glassmorphism |
| Neumorphism | `palettes/2025/neumorphism.yml` | healthcare | neumorphism |
| Neobrutalism | `palettes/2025/neobrutalism.yml` | education | neobrutalism |
| Vibrant | `palettes/2025/vibrant.yml` | ecommerce | vibrant |

### 2026
| Name | File | Industry | Style |
|------|------|----------|-------|
| Realestate Luxury | `palettes/2026/realestate-luxury.yml` | realestate | luxury |
| Social Minimal | `palettes/2026/social-minimal.yml` | social | minimalist |
| Gaming Dark | `palettes/2026/gaming-dark.yml` | gaming | tech |
| Travel Mood | `palettes/2026/travel-mood.yml` | travel | soft |
| Poster Conference | `palettes/2026/poster-conference.yml` | creative | editorial |
| Cyberpunk | `palettes/2026/cyberpunk.yml` | gaming | cyberpunk |
| Retro Futurism | `palettes/2026/retro-futurism.yml` | creative | retro-futurism |
| Organic | `palettes/2026/organic.yml` | food | organic |
| Modern Agency | `palettes/2026/modern-agency.yml` | creative | modern-agency |

### Traditional
| Name | File | Description |
|------|------|-------------|
| Yuebai Quiet | `palettes/traditional/yuebai-quiet.yml` | Yuebai · Quiet East |
| Tang Dynasty Warm | `palettes/traditional/tang-dynasty-warm.yml` | Tang Dynasty · Warm Golden Age |
| Traditional Colors DB | `palettes/traditional/colors.yml` | 100+ traditional Chinese colors with harmony relationships |

---

## Designs

### 2024
| Name | Directory | Industry | Scenes | Medium | Style |
|------|-----------|----------|--------|--------|-------|
| SaaS Blue | `designs/2024/saas-blue/` | saas | dashboard, admin | web | enterprise |
| Fintech Green | `designs/2024/fintech-green/` | fintech | dashboard, data-heavy | web | enterprise |
| E-commerce Warm | `designs/2024/ecommerce-warm/` | ecommerce | landing, list | web | playful |
| Startup Minimal | `designs/2024/startup-minimal/` | startup | landing, hero | web | minimalist |
| Creative Portfolio | `designs/2024/creative-portfolio/` | creative | gallery | web | editorial |
| Swiss Modern | `designs/2024/swiss-modern/` | creative | landing, hero, gallery | web | swiss-modern |
| Art Deco | `designs/2024/art-deco/` | creative | landing, hero | web | art-deco |
| Noir | `designs/2024/noir/` | media | landing, hero, content | web | noir |
| Industrial | `designs/2024/industrial/` | startup | landing, hero | web | industrial |
| Brutalist | `designs/2024/brutalist/` | startup | landing, hero | web | brutalist |

### 2025
| Name | Directory | Industry | Scenes | Medium | Style |
|------|-----------|----------|--------|--------|-------|
| AI Landing Dark | `designs/2025/ai-landing-dark/` | saas | landing, hero | web | tech |
| Healthcare Soft | `designs/2025/healthcare-soft/` | healthcare | dashboard, profile | app | soft |
| Food App Warm | `designs/2025/food-app-warm/` | food | list, detail | app | playful |
| Media Blog Serif | `designs/2025/media-blog-serif/` | media | content | web | editorial |
| Education Kid | `designs/2025/education-kid/` | education | landing, gallery | web | playful |
| Glassmorphism | `designs/2025/glassmorphism/` | saas | landing, hero, dashboard | web | glassmorphism |
| Neumorphism | `designs/2025/neumorphism/` | healthcare | dashboard, profile, form | web | neumorphism |
| Neobrutalism | `designs/2025/neobrutalism/` | education | landing, hero, list | web | neobrutalism |
| Vibrant | `designs/2025/vibrant/` | ecommerce | landing, hero, gallery | web | vibrant |

### 2026
| Name | Directory | Industry | Scenes | Medium | Style |
|------|-----------|----------|--------|--------|-------|
| Realestate Luxury | `designs/2026/realestate-luxury/` | realestate | landing, detail | web | luxury |
| Social Minimal | `designs/2026/social-minimal/` | social | list, detail | app | minimalist |
| Gaming Dark | `designs/2026/gaming-dark/` | gaming | landing, hero | web | tech |
| Travel Mood | `designs/2026/travel-mood/` | travel | landing, gallery | web | soft |
| Poster Conference | `designs/2026/poster-conference/` | creative | poster | poster | editorial |
| Cyberpunk | `designs/2026/cyberpunk/` | gaming | landing, hero | web | cyberpunk |
| Retro Futurism | `designs/2026/retro-futurism/` | creative | landing, hero, gallery | web | retro-futurism |
| Organic | `designs/2026/organic/` | food | landing, hero, gallery | web | organic |
| Modern Agency | `designs/2026/modern-agency/` | creative | landing, hero, gallery | web | modern-agency |

---

## Preview Server

| Version | File | Size | Description |
|---------|------|------|-------------|
| 0.2.3 | `preview-server/dist.zip` | ~170KB | Full preview-server distribution (Node.js + React SPA) |

Extracted structure:
```
dist/             # Compiled server (Node.js)
  index.js        # Entry point
  capture/        # Screenshot / clip capture
  editor/         # Element editor API
  image/          # Image generation router
  lib/            # File watcher, WebSocket manager, MIME
  server/         # Static file server + live reload
dist-client/      # React SPA (project list, sidebar, preview)
package.json      # Runtime dependencies (ws, playwright, react, yaml)
manifest.json     # PWA manifest
```

After extracting, run `npm install --production` to install runtime dependencies.
