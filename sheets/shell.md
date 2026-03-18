# Shell (Bash/Zsh)

## Movement
     Ctrl+A                Go to beginning of line
     Ctrl+E                Go to end of line
     Alt+F                 Forward one word
     Alt+B                 Back one word
     Ctrl+F                Forward one character
     Ctrl+B                Back one character

## Editing
     Ctrl+U                Delete from cursor to start of line
     Ctrl+K                Delete from cursor to end of line
     Ctrl+W                Delete word before cursor
     Alt+D                 Delete word after cursor
     Ctrl+Y                Paste (yank) last deleted text
     Ctrl+T                Swap last two characters
     Alt+T                 Swap last two words
     Ctrl+_                Undo last edit

## History
     Ctrl+R                Reverse search history
     Ctrl+S                Forward search history
     Ctrl+P / Up           Previous command
     Ctrl+N / Down         Next command
     !!                    Repeat last command
     !$                    Last argument of previous command
     Alt+.                 Last argument of previous command (cycle)
     !abc                  Run last command starting with "abc"
     !abc:p                Print (don't run) last command starting with "abc"

## Process Control
     Ctrl+C                Kill current process
     Ctrl+Z                Suspend current process (fg to resume)
     Ctrl+D                Exit shell / EOF
     Ctrl+L                Clear screen

## Miscellaneous
     Ctrl+X Ctrl+E         Open command in $EDITOR
     Tab                   Autocomplete
     Alt+?                 Show possible completions
