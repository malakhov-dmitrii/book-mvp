#!/bin/bash
# Sync MVP content from notes/build into site/src/content
# Run this whenever the MVP file in notes/ is updated.
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SITE_DIR="$(dirname "$SCRIPT_DIR")"
NOTES_DIR="$(dirname "$SITE_DIR")/notes"
SOURCE="$NOTES_DIR/build/kniga-mvp-v0.1.md"
DEST="$SITE_DIR/src/content/kniga-mvp-v0.1.md"

if [ ! -f "$SOURCE" ]; then
  echo "ERROR: source not found: $SOURCE" >&2
  exit 1
fi

mkdir -p "$(dirname "$DEST")"
cp -v "$SOURCE" "$DEST"
echo "Synced: $(wc -l < "$DEST") lines, $(wc -w < "$DEST") words"
