#!/bin/bash

set -e

BASE_DIR="$(dirname $0)/.."
TARGET_DIR="$BASE_DIR/target"

MKDIR=mkdir
AGLIO="$BASE_DIR/node_modules/.bin/aglio"

APIB="$BASE_DIR/index.apib"
HTML="$TARGET_DIR/index.html"

"$MKDIR" -p "$TARGET_DIR"
"$AGLIO" -i "$APIB" -o "$HTML"
