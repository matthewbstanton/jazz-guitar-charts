#!/usr/bin/env bash
# Builds all top-level LilyPond (.ly) files and songs/*.ly, placing the
# generated output (PDF, etc.) into the output/ folder. Files under
# library/ are includes, not standalone scores, and are skipped.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

OUTPUT_DIR="output"
mkdir -p "$OUTPUT_DIR" "$OUTPUT_DIR/songs"

shopt -s nullglob
ly_files=(*.ly)
song_files=(songs/*.ly)
shopt -u nullglob

if [ ${#ly_files[@]} -eq 0 ] && [ ${#song_files[@]} -eq 0 ]; then
  echo "No .ly files found to build."
  exit 0
fi

for f in "${ly_files[@]}"; do
  echo "Building $f..."
  lilypond -o "$OUTPUT_DIR" "$f"
done

for f in "${song_files[@]}"; do
  echo "Building $f..."
  lilypond -o "$OUTPUT_DIR/songs" "$f"
done

echo "Done. Output written to $OUTPUT_DIR/"
