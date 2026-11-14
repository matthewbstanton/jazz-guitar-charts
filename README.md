# Jazz Guitar Charts

A collection of guitar reference charts — chord shapes, scales, and the
CAGED system — typeset with [LilyPond](https://lilypond.org) and rendered
as clean, printable PDFs.

## Charts

| File | Description |
| --- | --- |
| `7th_chords.ly` | Core 7th chord shapes (maj7, dom7, min7, etc.) across the neck |
| `7th_chord_inversions.ly` | Inversions of 7th chords, organized by root string |
| `barre-chords.ly` | Movable E-shape and A-shape major/minor barre chords |
| `caged-system.ly` | The CAGED system — chord, function, scale, arpeggio, and pentatonic shapes for each of the five positions |
| `scales.ly` | Scale fingering patterns (e.g. G major) shown as fingers, scale-degree function, and note names, plus linear/sequence/triad practice patterns |
| `songs/girl-from-ipanema.ly` | Chord chart for "Girl from Ipanema" |

Shared fret-diagram helpers and CAGED shape data live under `library/` and
are `\include`d by the files above — they aren't standalone charts.

## Building

Requires [LilyPond](https://lilypond.org/download.html) 2.26.0 or newer.

```sh
./build.sh
```

This compiles every top-level `*.ly` file and everything under `songs/`,
writing PDFs to `output/` (songs go in `output/songs/`).

## Releases

Pushing to `main` runs [`.github/workflows/build-pdfs.yml`](.github/workflows/build-pdfs.yml),
which builds all charts and publishes them as individual PDFs on a rolling
[`latest` release](../../releases/latest) — no need to build locally just to
grab a PDF.
