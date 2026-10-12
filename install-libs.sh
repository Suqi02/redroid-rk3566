#!/bin/sh
set -eu
BASE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
LIB_DIR="$BASE_DIR/rk3566-libs"
for archive in "$LIB_DIR"/*.so.gz; do
    [ -f "$archive" ] || continue
    output=${archive%.gz}
    tmp="$output.tmp"
    gzip -dc "$archive" > "$tmp"
    chmod 0644 "$tmp"
    mv -f "$tmp" "$output"
    echo "restored $(basename "$output")"
done
