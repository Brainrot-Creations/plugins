#!/usr/bin/env bash
# Build the OpenAI plugin directory ZIP for one plugin: its portable Agent Plugins
# files only (plugin.json, mcp.json, skills/, assets/), named by version.
#   scripts/package-openai.sh brainrot-finance   ->  dist/brainrot-finance-1.0.0.zip
# Bump "version" in the plugin's plugin.json before re-uploading a new package.
set -euo pipefail

name="${1:?usage: scripts/package-openai.sh <plugin>}"
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dir="$root/plugins/$name"
[[ -f "$dir/plugin.json" ]] || { echo "no $dir/plugin.json" >&2; exit 1; }

version="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["version"])' "$dir/plugin.json")"
out="$root/dist/$name-$version.zip"
mkdir -p "$root/dist"
rm -f "$out"

files=(plugin.json)
for f in mcp.json skills assets; do [[ -e "$dir/$f" ]] && files+=("$f"); done
(cd "$dir" && zip -qrX "$out" "${files[@]}" -x '*.DS_Store')
echo "$out"
unzip -l "$out" | tail -n +4 | sed '$d' | sed '$d'
