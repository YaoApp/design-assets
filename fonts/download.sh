#!/bin/bash
# ============================================================
# Download all 11 seed fonts with clean filenames
# Run from repo root: cd YaoApp/design-assets && bash fonts/download.sh
#
# Strategy:
#   - Fetch Google Fonts CSS → save as fonts.css (for @font-face serving)
#   - Download woff2/ttf files via wget
#   - Rename LATIN subset files to {weight}.woff2 for clean INDEX.md paths
#   - Keep non-Latin subsets in subsets/ dir
#   - CJK fonts: keep all subset files + CSS for unicode-range serving
# ============================================================
set -e

UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"
LATIN_PATTERN="U\+0000-00FF"

download_woff2() {
  local url="$1"
  local dest="$2"
  wget -q --header="User-Agent: $UA" "$url" -O "$dest"
}

download_gfont() {
  local family="$1"    # URL-encoded: "Open+Sans"
  local weights="$2"   # "400;600;700"
  local dir="$3"
  mkdir -p "$dir"
  mkdir -p "$dir/subsets"

  local css_url="https://fonts.googleapis.com/css2?family=${family}:wght@${weights}"
  echo "  → Fetching CSS: $css_url"

  # Fetch CSS via wget
  wget -q --header="User-Agent: $UA" "$css_url" -O "$dir/fonts.css"

  local css
  css=$(cat "$dir/fonts.css")

  # Extract all unique woff2 URLs and download each
  echo "$css" | grep -oP 'https://fonts\.gstatic\.com/s/[^)]+\.woff2' | sort -u | while read url; do
    local f
    f=$(basename "$url")
    if [ ! -f "$dir/subsets/$f" ]; then
      download_woff2 "$url" "$dir/subsets/$f"
    fi
  done

  # Parse CSS: for each @font-face block, extract weight, url, unicode-range
  # If it's the LATIN subset, copy as {weight}.woff2
  echo "$css" | tr '\n' ' ' | grep -oP '@font-face\s*\{[^}]*\}' | while read block; do
    local weight
    weight=$(echo "$block" | grep -oP 'font-weight:\s*\K\d+')
    local url
    url=$(echo "$block" | grep -oP 'url\(https://fonts\.gstatic\.com/s/[^)]+\.woff2\)' | grep -oP 'https://[^)]+')
    local fname
    fname=$(basename "$url")
    local has_latin
    has_latin=$(echo "$block" | grep -c "$LATIN_PATTERN" || true)

    if [ -n "$weight" ] && [ -n "$fname" ] && [ "$has_latin" -gt 0 ] && [ -f "$dir/subsets/$fname" ]; then
      cp "$dir/subsets/$fname" "$dir/${weight}.woff2"
    fi
  done

  local count
  count=$(ls -1 "$dir"/*.woff2 2>/dev/null | grep -v subsets | wc -l)
  local subset_count
  subset_count=$(ls -1 "$dir/subsets/"*.woff2 2>/dev/null | wc -l)
  local size
  size=$(du -sh "$dir" 2>/dev/null | cut -f1)
  echo "  ✓ $family: ${count} weight files + ${subset_count} subsets, $size"
}

echo "📥 Downloading 11 seed fonts..."
echo ""

# --- English Sans-Serif ---
echo "--- English Sans-Serif ---"
download_gfont "Inter" "400;500;600;700;800" "fonts/inter"
download_gfont "Roboto" "400;500;700" "fonts/roboto"
download_gfont "Open+Sans" "400;600;700" "fonts/open-sans"
download_gfont "DM+Sans" "400;500;700" "fonts/dm-sans"
download_gfont "Space+Grotesk" "400;500;700" "fonts/space-grotesk"

# --- English Serif ---
echo "--- English Serif ---"
download_gfont "Playfair+Display" "400;700;900" "fonts/playfair-display"

# --- English Monospace ---
echo "--- English Monospace ---"
download_gfont "JetBrains+Mono" "400;500;700" "fonts/jetbrains-mono"

# --- Chinese (CJK subset files for unicode-range serving) ---
echo "--- Chinese (CJK subset, may take a while) ---"
echo "  ⚠️  Noto Sans SC: ~8MB/weight total across subsets"
download_gfont "Noto+Sans+SC" "400;500;700" "fonts/noto-sans-sc"
echo "  ⚠️  Noto Serif SC: ~8MB/weight total across subsets"
download_gfont "Noto+Serif+SC" "400;700" "fonts/noto-serif-sc"

# --- Chinese Handwritten (LXGW WenKai from GitHub releases) ---
echo "--- Chinese Handwritten ---"
mkdir -p fonts/lxgw-wenkai
LXGW_URL="https://github.com/lxgw/LxgwWenKai/releases/latest"
LXGW_DOWNLOAD=$(wget -q -O - --header="User-Agent: $UA" "$LXGW_URL" 2>/dev/null | grep -oP '/lxgw/LxgwWenKai/releases/download/[^"]+\.zip' | head -1)
if [ -n "$LXGW_DOWNLOAD" ]; then
  echo "  ⚠️  LXGW WenKai from GitHub: ~40MB"
  wget -q --header="User-Agent: $UA" "https://github.com$LXGW_DOWNLOAD" -O /tmp/lxgw-wenkai.zip
  unzip -jo /tmp/lxgw-wenkai.zip "*.woff2" "*.ttf" -d fonts/lxgw-wenkai/ 2>/dev/null || true
  rm -f /tmp/lxgw-wenkai.zip
  echo "  ✓ LXGW WenKai: $(ls -1 fonts/lxgw-wenkai/*.{woff2,ttf} 2>/dev/null | wc -l) files"
else
  echo "  ⚠️  Could not find LXGW WenKai release. Download manually from: $LXGW_URL"
fi

# --- Icon Font ---
echo "--- Icon Font ---"
download_gfont "Material+Symbols+Rounded" \
  "opsz,wght,FILL,GRAD@20..48,400,0..1,0" "fonts/material-symbols"

# --- Summary ---
echo ""
echo "✅ All fonts downloaded"
echo ""
echo "--- Font sizes ---"
du -sh fonts/*/ 2>/dev/null
echo ""
echo "--- Weight files per font ---"
for dir in fonts/*/; do
  name=$(basename "$dir")
  weights=$(ls -1 "$dir"/*.woff2 2>/dev/null | grep -v subsets | sed 's/.*\///' | sed 's/\.woff2//' | tr '\n' ',' | sed 's/,$//')
  css=$([ -f "$dir/fonts.css" ] && echo "✓" || echo "✗")
  echo "  $name: weights=[$weights] css=$css"
done
