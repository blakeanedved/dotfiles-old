[tpm](https://github.com/tmux-plugins/tpm)

## tmux plugins 
[tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
[tmux-copycat](https://github.com/tmux-plugins/tmux-copycat)
[tmux-cpu](https://github.com/tmux-plugins/tmux-cpu)
[tmux-battery](https://github.com/tmux-plugins/tmux-battery)
[tmux-yank](https://github.com/tmux-plugins/tmux-yank)
[tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)
[tmux-open](https://github.com/tmux-plugins/tmux-open)

## Keybindings

### Misc
Keybinding|Action
---|---
`C-a` | prefix
`\` | horizontal split
`-` | vertical split
`r` | reload tmux.conf
`?` | show shortcuts
`:` | command mode

### Sessions
Keybinding|Action
---|---
`$` | rename session
`d` | detach from session
`(` | previous session
`)` | next session

### Windows
Keybinding|Action
---|---
`c` | create window
`&` | close window
`S-Left` or `p` | previous window
`S-Right` or `n` | next window
`,` | rename window
`0`..`9` | select window by number

### Panes
Keybinding|Action
---|---
`Left` or `h` | select left pane
`Right` or `l` | select right pane
`Up` or `k` | select upper pane
`Down` or `j` | select lower pane
`<` | resize pane left (repeatable)
`>` | resize pane right (repeatable)
`_` | resize pane up (repeatable)
`+` | resize pane down (repeatable)
`Tab` or `o` | switch to next pane (repeatable)
`{` | move pane left
`}` | move pane right
`Space` | rotate between pane layouts
`q` | show pane numbers
`q` `0`..`9` | switch to pane by number
`z` | toggle pane zoom
`x` | close current pane

### Copy Mode
Keybinding|Action
---|---
`[` | copy mode
`]` or `p` | paste
`C-p` | paste from buffer
`q` | quit copy mode
`Space` or `v` | start selection (while in copy mode)
`Enter` or `y` | copy (while in copy mode)
`/` | search forward (while in copy mode)
`?` | search backward (while in copy mode)
`g` | go to top line (while in copy mode)
`G` | go to bottom line (while in copy mode)
`w` | move cursor forward 1 word (while in copy mode)
`b` | move cursor backward 1 word (while in copy mode)
`n` | next keyword occurrence (while in copy mode)
`N` | previous keyboard occurrence (while in copy mode)

### tmux-copycat
Keybinding|Action
---|---
`/` | enter copycat regex search mode
`C-f` | file search
`C-u` | url search
`C-d` | number search
`A-i` | IP address search
`C-g` | jump over git status files (best used after `git status`)
`A-h` | jump over SHA-1/SHA-256 hashes (best used after `git log`)

### tmux-yank
Keybinding|Action
---|---
`y` | copy text from the command line to the clipboard
`Y` | copy current directory to the clipboard

### tmux-open
Keybinding|Action
---|---
`o` | open selected link in the browser
`C-o` | open selected file link in `$EDITOR`
`S-s` | search selected text in a search engine (default is duckduckgo)

## Commands
Command|Action
---|---
`capture-pane` | capture entire pane to copy buffer
`save-buffer {filename}` | save buffer contents to `filename`
`set -g OPTION` | set option for all sessions
`setw -g OPTION` | set option for all windows
`swap-window -s SRC -t DEST` | swap `SRC` and `DEST` windows
`swap-window -t {+/-X}` | move current window left or right X positions
