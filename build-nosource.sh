#!/usr/bin/env bash
# Runs build.sh with the "Source: learnthefret.com" footer left off every
# page. Output goes to the same output/ folder as a normal build.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

HIDE_SOURCE_FOOTER=1 ./build.sh
