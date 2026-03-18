# cheatsheet

Quick terminal cheatsheets at your fingertips.

```
$ cheatsheet shell
# Shell (Bash/Zsh)
## Movement
  Ctrl+A                Go to beginning of line
  Ctrl+E                Go to end of line
  ...
```

## Install

```bash
git clone https://github.com/matttennie/cheatsheet.git ~/.cheatsheet
cd ~/.cheatsheet
bash install.sh
```

## Usage

```
cheatsheet              List available cheatsheets
cheatsheet <name>       Show a cheatsheet
cheatsheet --new <name> <file>  Add a new cheatsheet from a file
cheatsheet --help       Show this help
```

## Bundled Sheets

- `kitty` — Kitty terminal shortcuts
- `shell` — Bash/Zsh keyboard shortcuts

## Add Your Own

```bash
cheatsheet --new vim ~/my-vim-cheatsheet.txt
```

Or drop any `.md` file into `~/.cheatsheets/`.

## Author

**Matthew Tennie** — [@matttennie](https://github.com/matttennie)

## License

[MIT](LICENSE)
