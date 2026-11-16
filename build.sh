#!/usr/bin/env bash
# Builds the LilyPond (.ly) files in reference_sheets/ and songs/, placing the
# generated PDFs into output/sheets/ and output/songs/. Files under
# library/ are includes, not standalone scores, and are skipped.
# Diagram files under chords/*/ and scales/ are built as cropped SVGs into
# output/chords/*/ and output/scales/.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

OUTPUT_DIR="output"
mkdir -p "$OUTPUT_DIR" "$OUTPUT_DIR/songs"

shopt -s nullglob
ly_files=(reference_sheets/*.ly reference_sheets/*/*.ly)
song_files=(songs/*.ly)
chord_files=(chords/*/*.ly)
scale_files=(scales/*.ly)
shopt -u nullglob

if [ ${#ly_files[@]} -eq 0 ] && [ ${#song_files[@]} -eq 0 ] && [ ${#chord_files[@]} -eq 0 ] && [ ${#scale_files[@]} -eq 0 ]; then
  echo "No .ly files found to build."
  exit 0
fi

for f in "${ly_files[@]}"; do
  echo "Building $f..."
  # a sheet in a subfolder of reference_sheets/ goes in the same subfolder
  # of output/sheets/
  out="$OUTPUT_DIR/sheets/$(dirname "${f#reference_sheets/}")"
  mkdir -p "$out"
  lilypond -o "$out" "$f"
done

for f in "${song_files[@]}"; do
  echo "Building $f..."
  lilypond -o "$OUTPUT_DIR/songs" "$f"
done

for f in "${chord_files[@]}" "${scale_files[@]}"; do
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
