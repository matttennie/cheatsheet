#!/usr/bin/env bash
# Install cheatsheet
set -e

CHEATSHEET_DIR="${CHEATSHEET_DIR:-$HOME/.cheatsheets}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$CHEATSHEET_DIR"

# Copy bundled sheets (won't overwrite existing)
for sheet in "$SCRIPT_DIR"/sheets/*.md; do
  name="$(basename "$sheet")"
  if [[ ! -f "$CHEATSHEET_DIR/$name" ]]; then
    cp "$sheet" "$CHEATSHEET_DIR/$name"
    echo "  Installed $name"
  else
    echo "  Skipped $name (already exists)"
  fi
done

# Add source line to shell config if not already present
SHELL_RC="$HOME/.$(basename "$SHELL")rc"
SOURCE_LINE="source \"$SCRIPT_DIR/cheatsheet.sh\""

if ! grep -qF "cheatsheet.sh" "$SHELL_RC" 2>/dev/null; then
  echo "" >> "$SHELL_RC"
  echo "# Cheatsheet" >> "$SHELL_RC"
  echo "$SOURCE_LINE" >> "$SHELL_RC"
  echo "  Added source line to $SHELL_RC"
else
  echo "  Already sourced in $SHELL_RC"
fi

echo ""
echo "Done! Restart your shell or run: source $SHELL_RC"
