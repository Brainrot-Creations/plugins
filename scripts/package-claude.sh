#!/usr/bin/env bash
# Build the Claude plugin ZIP for one plugin (to upload in Claude's plugin settings): its
# Claude Code files only (.claude-plugin/, .mcp.json, skills/, assets/, README.md), named by version.
#   scripts/package-claude.sh brainrot-finance   ->  dist/brainrot-finance-claude-1.0.0.zip
# Bump "version" in the plugin's .claude-plugin/plugin.json before re-uploading a new package.
set -euo pipefail

name="${1:?usage: scripts/package-claude.sh <plugin>}"
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dir="$root/plugins/$name"
[[ -f "$dir/.claude-plugin/plugin.json" ]] || { echo "no $dir/.claude-plugin/plugin.json" >&2; exit 1; }

version="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["version"])' "$dir/.claude-plugin/plugin.json")"
out="$root/dist/$name-claude-$version.zip"
mkdir -p "$root/dist"
rm -f "$out"

files=(.claude-plugin)
for f in .mcp.json skills assets README.md; do [[ -e "$dir/$f" ]] && files+=("$f"); done
(cd "$dir" && zip -qrX "$out" "${files[@]}" -x '*.DS_Store')
echo "$out"
unzip -l "$out" | tail -n +4 | sed '$d' | sed '$d'
