#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

rm -rf dist
mkdir -p dist

shopt -s nullglob
found=0
for d in skills/*/; do
  found=1
  name=$(basename "$d")

  if [ ! -f "$d/SKILL.md" ]; then
    echo "ERROR: $d is missing SKILL.md" >&2
    exit 1
  fi

  if ! grep -q "^name: $name\$" "$d/SKILL.md"; then
    echo "ERROR: $d/SKILL.md frontmatter 'name:' does not match folder name '$name'" >&2
    exit 1
  fi

  (cd skills && zip -qr "../dist/$name.zip" "$name")

  first_entry=$(unzip -Z1 "dist/$name.zip" | head -1)
  if [ "$first_entry" != "$name/" ]; then
    echo "ERROR: dist/$name.zip root entry is '$first_entry', expected '$name/'" >&2
    exit 1
  fi

  echo "built dist/$name.zip"
done

if [ "$found" -eq 0 ]; then
  echo "ERROR: no skills found in skills/" >&2
  exit 1
fi
