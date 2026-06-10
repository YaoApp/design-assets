#!/bin/bash
# ============================================================
# Download all 11 seed fonts
# Run from repo root: cd YaoApp/design-assets && bash fonts/download.sh
#
# Sources:
#   - English fonts: Google Fonts (woff2, via CSS API)
#   - Chinese fonts: Google Fonts (woff2, subset files for CJK)
#   - LXGW WenKai: LXGW GitHub releases
#   - Material Symbols: Google Fonts (woff2, variable)
# ============================================================
set -e

UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36"

download_gfont() {
  local family="$1"    # URL-encoded: "Open+Sans"
  local weights="$2"   # "400;600;700"
  local dir="$3"
  mkdir -p "$dir"
  local css=$(curl -sL -H "User-Agent: $UA" \
    "https://fonts.googleapis.com/css2?family=${family}:wght@${weights}")
  echo "$css" | grep -oP 'https://fonts\.gstatic\.com/s/[^)]+\.woff2' | sort -u | while read url; do
    local f=$(basename "$url")
    curl -sL -H "User-Agent: $UA" "$url" -o "$dir/$f"
  done
  local count=$(ls -1 "$dir"/*.woff2 2>/dev/null | wc -l)
  local size=$(du -sh "$dir" 2>/dev/null | cut -f1)
  echo "  ✓ $family: $count files, $size"
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

# --- Chinese (subset files — many small woff2 per Unicode block) ---
echo "--- Chinese (CJK subset, may take a while) ---"
echo "  ⚠️  Noto Sans SC: ~8MB/weight total across subsets"
download_gfont "Noto+Sans+SC" "400;500;700" "fonts/noto-sans-sc"
echo "  ⚠️  Noto Serif SC: ~8MB/weight total across subsets"
download_gfont "Noto+Serif+SC" "400;700" "fonts/noto-serif-sc"

# --- Chinese Handwritten ---
# LXGW WenKai is not directly on Google Fonts (only Mono TC variant is).
# Download from LXGW GitHub releases instead.
echo "--- Chinese Handwritten ---"
mkdir -p fonts/lxgw-wenkai
LXGW_URL="https://github.com/lxgw/LxgwWenKai/releases/latest"
LXGW_DOWNLOAD=$(curl -sL "$LXGW_URL" | grep -oP '/lxgw/LxgwWenKai/releases/download/[^"]+\.zip' | head -1)
if [ -n "$LXGW_DOWNLOAD" ]; then
  echo "  ⚠️  LXGW WenKai from GitHub: ~40MB"
  curl -sL "https://github.com$LXGW_DOWNLOAD" -o /tmp/lxgw-wenkai.zip
  # Extract only woff2 files
  unzip -j /tmp/lxgw-wenkai.zip "*.woff2" -d fonts/lxgw-wenkai/
  rm /tmp/lxgw-wenkai.zip
  echo "  ✓ LXGW WenKai: $(ls -1 fonts/lxgw-wenkai/*.woff2 2>/dev/null | wc -l) files"
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
du -sh fonts/*/
