#!/usr/bin/env bash
set -euo pipefail

KEYMAP="arthurstomp"
CONFIG_H="keyboards/silakka54/config.h"

compile_side() {
    local SIDE="$1"

    if [[ "$SIDE" == "left" ]]; then
        sed -i 's/^#define MASTER_RIGHT/\/\/ #define MASTER_RIGHT/' "$CONFIG_H"
    else
        sed -i 's/^\/\/ #define MASTER_RIGHT/#define MASTER_RIGHT/' "$CONFIG_H"
    fi

    rm -f "silakka54_${KEYMAP}_${SIDE}.uf2"

    make silakka54:"$KEYMAP"

    mv "silakka54_${KEYMAP}.uf2" "silakka54_${KEYMAP}_${SIDE}.uf2"

    echo "Built silakka54_${KEYMAP}_${SIDE}.uf2"
}

compile_side "right"
compile_side "left"
