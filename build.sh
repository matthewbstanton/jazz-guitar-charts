#!/usr/bin/env bash
# Builds the LilyPond (.ly) files in reference_sheets/ and songs/, placing the
# generated output (PDF, etc.) into the output/ folder. Files under
# library/ are includes, not standalone scores, and are skipped.
# Single-diagram files under chords/*/ are built as cropped SVGs into
# output/chords/*/.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

OUTPUT_DIR="output"
mkdir -p "$OUTPUT_DIR" "$OUTPUT_DIR/songs"

shopt -s nullglob
ly_files=(reference_sheets/*.ly)
song_files=(songs/*.ly)
chord_files=(chords/*/*.ly)
shopt -u nullglob

if [ ${#ly_files[@]} -eq 0 ] && [ ${#song_files[@]} -eq 0 ] && [ ${#chord_files[@]} -eq 0 ]; then
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

for f in "${chord_files[@]}"; do
  echo "Building $f..."
  out="$OUTPUT_DIR/$(dirname "$f")"
  name="$(basename "$f" .ly)"
  mkdir -p "$out"
  # the cairo backend draws text as outlines, so the SVG doesn't depend on
  # the viewer's fonts; -dcrop trims the page down to the diagram, and
  # -dno-print-pages skips the full-page version
  lilypond -dbackend=cairo --svg -dcrop -dno-print-pages -o "$out" "$f"
  mv "$out/$name.cropped.svg" "$out/$name.svg"
  # cairo's crop also writes a PNG nobody asked for
  rm -f "$out/$name.cropped.png"
done

echo "Done. Output written to $OUTPUT_DIR/"
