#!/usr/bin/env bash
# cheatsheet — quick terminal cheatsheets
# https://github.com/matttennie/cheatsheet

CHEATSHEET_DIR="${CHEATSHEET_DIR:-$HOME/.cheatsheets}"

cheatsheet() {
  if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage: cheatsheet [option] [name]"
    echo ""
    echo "  cheatsheet              List available cheatsheets"
    echo "  cheatsheet <name>       Show a cheatsheet"
    echo "  cheatsheet --new <name> <file>  Add a new cheatsheet from a file"
    echo "  cheatsheet --help       Show this help"
    echo ""
    echo "Cheatsheets are stored in $CHEATSHEET_DIR"
    return 0
  fi
  if [[ "$1" == "--new" ]]; then
    if [[ -z "$2" || -z "$3" ]]; then
      echo "Usage: cheatsheet --new <name> <file>"
      return 1
    fi
    if [[ ! -f "$3" ]]; then
      echo "File not found: $3"
      return 1
    fi
    mkdir -p "$CHEATSHEET_DIR"
    cp "$3" "$CHEATSHEET_DIR/${2}.md"
    echo "Created cheatsheet '$2'"
    return 0
  fi
  local sheet="$CHEATSHEET_DIR/${1}.md"
  if [[ -z "$1" ]]; then
    echo "Available cheatsheets:"
    ls "$CHEATSHEET_DIR"/ 2>/dev/null | sed 's/\.md$//'
  elif [[ -f "$sheet" ]]; then
    cat "$sheet"
  else
    echo "No cheatsheet for '$1'"
    echo "Available: $(ls "$CHEATSHEET_DIR"/ 2>/dev/null | sed 's/\.md$//' | tr '\n' ' ')"
  fi
}
