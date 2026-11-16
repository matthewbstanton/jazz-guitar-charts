# Jazz Guitar Charts

A collection of guitar reference charts — chord shapes, scales, and the
CAGED system — typeset with [LilyPond](https://lilypond.org) and rendered
as clean, printable PDFs.

## Charts

| File | Description |
| --- | --- |
| `reference_sheets/7th_chords.ly` | Core 7th chord shapes (maj7, dom7, min7, etc.) across the neck |
| `reference_sheets/7th_chord_inversions.ly` | Inversions of 7th chords, organized by root string |
| `reference_sheets/barre-chords.ly` | Movable E-shape and A-shape major/minor barre chords |
| `reference_sheets/jazz-barre-chords.ly` | Major, minor, and 7th chord shapes, one page per root string |
| `reference_sheets/caged-system.ly` | The CAGED system — chord, function, scale, arpeggio, and pentatonic shapes for each of the five positions |
| `reference_sheets/scales.ly` | Scale fingering patterns (e.g. G major) shown as fingers, scale-degree function, and note names, plus linear/sequence/triad practice patterns |
| `reference_sheets/linear-scales.ly` | The major scale formula, and the C major scale played up each string on its own |

Shared fret-diagram helpers and CAGED shape data live under `library/` and
are `\include`d by the files above — they aren't standalone charts.

The single-string scales in `linear-scales/` are likewise `\include`d by
`reference_sheets/linear-scales.ly`, one file per string.

## Building

Requires [LilyPond](https://lilypond.org/download.html) 2.26.0 or newer.

```sh
./build.sh
```

This compiles everything under `reference_sheets/` and `songs/`, writing PDFs
to `output/` (songs go in `output/songs/`). Each single-chord file under
`chords/` is built as an SVG in `output/chords/`.

## Releases

Pushing to `main` runs [`.github/workflows/build-pdfs.yml`](.github/workflows/build-pdfs.yml),
which builds all charts and publishes them as individual PDFs on a rolling
[`latest` release](../../releases/latest) — no need to build locally just to
grab a PDF.

## License

Released under the [MIT License](LICENSE).
