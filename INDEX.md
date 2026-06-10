# Design Assets Index

> Repository: [YaoApp/design-assets](https://github.com/YaoApp/design-assets)
> Version: 1.0.0
> Updated: 2026-06-10
> Raw Base: https://raw.githubusercontent.com/YaoApp/design-assets/main

Design Agent (`smith.designer`) 的静态资产注册表。AI 启动时下载本文件（~5KB），
按需拉取具体资产。所有路径相对于 Raw Base。

---

## Fonts

| Name | Category | Weights | File | Size |
|------|----------|---------|------|------|
| Inter | sans-serif | 400-800 (var) | `fonts/inter/Inter-Variable.woff2` | ~315KB |
| Roboto | sans-serif | 400, 500, 700 | `fonts/roboto/Roboto-{Regular,Medium,Bold}.woff2` | ~160KB |
| Open Sans | sans-serif | 400, 600, 700 | `fonts/open-sans/OpenSans-{Regular,SemiBold,Bold}.woff2` | ~180KB |
| Playfair Display | serif | 400, 700, 900 | `fonts/playfair-display/PlayfairDisplay-{Regular,Bold,Black}.woff2` | ~250KB |
| DM Sans | sans-serif | 400, 500, 700 | `fonts/dm-sans/DMSans-{Regular,Medium,Bold}.woff2` | ~150KB |
| Space Grotesk | sans-serif | 400, 500, 700 | `fonts/space-grotesk/SpaceGrotesk-{Regular,Medium,Bold}.woff2` | ~160KB |
| JetBrains Mono | monospace | 400, 500, 700 | `fonts/jetbrains-mono/JetBrainsMono-{Regular,Medium,Bold}.woff2` | ~180KB |
| Noto Sans SC | sans-serif | 400, 500, 700 | `fonts/noto-sans-sc/NotoSansSC-{Regular,Medium,Bold}.woff2` | ~8MB/weight |
| Noto Serif SC | serif | 400, 700 | `fonts/noto-serif-sc/NotoSerifSC-{Regular,Bold}.woff2` | ~8MB/weight |
| LXGW WenKai | handwritten | 400, 500 | `fonts/lxgw-wenkai/LXGWWenKai-{Regular,Medium}.ttf` | ~25MB/weight |
| Material Symbols Rounded | icon | 400 (var) | `fonts/material-symbols/MaterialSymbolsRounded.woff2` | ~500KB |

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
| blank | `templates/web/blank.html` | 空白页面 + container + header |
| hero | `templates/web/hero.html` | Hero banner + content sections |
| grid | `templates/web/grid.html` | Grid container + card placeholders |
| form | `templates/web/form.html` | Centered form card |
| list | `templates/web/list.html` | Header + table/filter area |
| detail | `templates/web/detail.html` | Breadcrumb + info sections |

### App
| Name | File | Description |
|------|------|-------------|
| blank | `templates/app/blank.html` | 移动端空白页 (375px, touch-target 44px) |
| grid | `templates/app/grid.html` | 移动端卡片网格 |
| form | `templates/app/form.html` | 移动端表单页 |
| list | `templates/app/list.html` | 移动端列表页 |
| detail | `templates/app/detail.html` | 移动端详情页 |

### Poster
| Name | File | Description |
|------|------|-------------|
| blank | `templates/poster/blank.html` | 海报空白页 (800px, vw 单位) |
| hero | `templates/poster/hero.html` | 海报 Hero 区 |
| grid | `templates/poster/grid.html` | 海报网格布局 |

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

### 2025
| Name | File | Industry | Style |
|------|------|----------|-------|
| AI Landing Dark | `palettes/2025/ai-landing-dark.yml` | saas | tech |
| Healthcare Soft | `palettes/2025/healthcare-soft.yml` | healthcare | soft |
| Food App Warm | `palettes/2025/food-app-warm.yml` | food | playful |
| Media Blog Serif | `palettes/2025/media-blog-serif.yml` | media | editorial |
| Education Kid | `palettes/2025/education-kid.yml` | education | playful |

### 2026
| Name | File | Industry | Style |
|------|------|----------|-------|
| Realestate Luxury | `palettes/2026/realestate-luxury.yml` | realestate | luxury |
| Social Minimal | `palettes/2026/social-minimal.yml` | social | minimalist |
| Gaming Dark | `palettes/2026/gaming-dark.yml` | gaming | tech |
| Travel Mood | `palettes/2026/travel-mood.yml` | travel | soft |
| Poster Conference | `palettes/2026/poster-conference.yml` | creative | editorial |

### Traditional
| Name | File | Description |
|------|------|-------------|
| Yuebai Quiet | `palettes/traditional/yuebai-quiet.yml` | 月白 · 安静的东方 |
| Tang Dynasty Warm | `palettes/traditional/tang-dynasty-warm.yml` | 唐风 · 温暖的盛世 |

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

### 2025
| Name | Directory | Industry | Scenes | Medium | Style |
|------|-----------|----------|--------|--------|-------|
| AI Landing Dark | `designs/2025/ai-landing-dark/` | saas | landing, hero | web | tech |
| Healthcare Soft | `designs/2025/healthcare-soft/` | healthcare | dashboard, profile | app | soft |
| Food App Warm | `designs/2025/food-app-warm/` | food | list, detail | app | playful |
| Media Blog Serif | `designs/2025/media-blog-serif/` | media | content | web | editorial |
| Education Kid | `designs/2025/education-kid/` | education | landing, gallery | web | playful |

### 2026
| Name | Directory | Industry | Scenes | Medium | Style |
|------|-----------|----------|--------|--------|-------|
| Realestate Luxury | `designs/2026/realestate-luxury/` | realestate | landing, detail | web | luxury |
| Social Minimal | `designs/2026/social-minimal/` | social | list, detail | app | minimalist |
| Gaming Dark | `designs/2026/gaming-dark/` | gaming | landing, hero | web | tech |
| Travel Mood | `designs/2026/travel-mood/` | travel | landing, gallery | web | soft |
| Poster Conference | `designs/2026/poster-conference/` | creative | poster | poster | editorial |

---

## Preview Server

| Version | File | Size | Description |
|---------|------|------|-------------|
| 1.0.0 | `preview-server/dist.zip` | ~2MB | preview-server 完整发行包 (Node.js) |

解压后结构:
```
dist/
  index.js        # 入口
  public/         # SPA 界面 (项目列表、侧边栏、404)
  ...
```
