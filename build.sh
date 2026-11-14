#!/usr/bin/env bash
# Builds all top-level LilyPond (.ly) files in this directory and places
# the generated output (PDF, etc.) into the output/ folder.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

OUTPUT_DIR="output"
mkdir -p "$OUTPUT_DIR"

shopt -s nullglob
ly_files=(*.ly)
shopt -u nullglob

if [ ${#ly_files[@]} -eq 0 ]; then
  echo "No .ly files found to build."
  exit 0
fi

for f in "${ly_files[@]}"; do
  echo "Building $f..."
  lilypond -o "$OUTPUT_DIR" "$f"
done

echo "Done. Output written to $OUTPUT_DIR/"
