#!/usr/bin/env bash
set -euo pipefail

KEYMAP="arthurstomp"
SIDE="${1:-}"

if [[ "$SIDE" != "left" && "$SIDE" != "right" ]]; then
    echo "Usage: $0 <left|right>" >&2
    exit 1
fi

UF2_FILE="silakka54_${KEYMAP}_${SIDE}.uf2"

if [[ ! -f "$UF2_FILE" ]]; then
    echo "Error: $UF2_FILE not found. Run ./compile_silakka54.sh $SIDE first." >&2
    exit 1
fi

qmk flash -kb silakka54 -km "$KEYMAP" -bl "uf2-split-${SIDE}" "./${UF2_FILE}"
