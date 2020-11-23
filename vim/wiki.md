## Plugins

[camspiers/animate.vim](https://github.com/camspiers/animate.vim)
[camspiers/lens.vim](https://github.com/camspiers/lens.vim)
[andymass/vim-matchup](https://github.com/andymass/vim-matchup)
[rakr/vim-one](https://github.com/rakr/vim-one)
[scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
[terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
[AndrewRadev/sideways.vim](https://github.com/AndrewRadev/sideways.vim)
[AndrewRadev/splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim)
[AndrewRadev/tagalong.vim](https://github.com/AndrewRadev/tagalong.vim)
[ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
[tacahiroy/ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)
[junegunn/rainbow_parentheses.vim](https://github.com/junegunn/rainbow_parentheses.vim)
[tpope/vim-surround](https://github.com/tpope/vim-surround)
[tpope/vim-repeat](https://github.com/tpope/vim-repeat)
[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
[itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)
[airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
[markonm/traces.vim](https://github.com/markonm/traces.vim)
[mattn/emmet-vim](https://github.com/mattn/emmet-vim)

## Keybindings

### Saving and Exiting
Keybinding|Action
---|---
`:qa` | close all files
`:qa!` | close all files and abandon changes
`:w` | save file
`:wq` or `:x` or `ZZ` | save and close file
`:q` | close file
`:q!` | close file and abandon changes
`ZQ` | close buffer without saving

### Exiting Insert Mode
Keybinding|Action
---|---
`<Esc>` or `<C-[>` | go to normal mode
`<C-C>` | go to normal mode and abort current command

### Visual Mode
Keybinding|Action
---|---
`v` | enter visual mode
`V` | enter visual line mode
`<C-V>` | enter visual block mode

In Visual Mode
Keybinding|Action
---|---
`d` or `x` | cut selection
`s` or `c` | cut and replace selection
`y` | copy selection
See operators for other actions

### Navigation
Keybinding|Action
---|---
`h` or `<Left>` | move cursor left
`j` or `<Down>` | move cursor down
`k` or `<Up>` | move cursor up
`l` or `<Right>` | move cursor right
`<C-U>` / `<C-D>` | move half a page up/down
`<C-B>`/ `<C-F>` | move a page up/down
`b` / `w` | move to start of previous/next word
`ge` / `e` | move to end of previous/next word
`0` | move to start of line
`^` | move to start of line (after whitespace)
`$` | move to end of line
`fc` | move forward to next occurrence of character `c`
`Fc` | move backward to previous occurrence of character `c`
`tc` | move forward to right before the next occurrence of character `c`
`Tc` | move backward to right after the previous occurrence of character `c`
`gg` | move to first line
`G` | move to last line
`:n` or `nG` | move to line `n`
`zz` | center this line
`zt` | top this line
`zb` | bottom this line
`H` | move to top of screen
`M` | move to middle of screen
`L` | move to bottom of screen

### Editing
Keybinding|Action
---|---
`a` | enter insert mode after current character
`A` | enter insert mode at end of line
`i` | enter insert mode at current character
`o` | create and edit a new line after this line
`O` | create and edit a new line before this line
`s` | delete character and enter insert mode
`S` | delete line and enter insert mode
`C` | delete until end of line and enter insert mode
`rc` | replace current character with the character `c`
`R` | enter replace mode
`u` | undo changes
`<C-R>` | redo changes
`x` | cut character
`dd` | cut line
`yy` | copy line
`p` | paste after current character
`P` | paste before current character
`"+p` or `"*p` | paste from system clipboard
`"+y` or `"*y` | copy to system clipboard

### Operators
Operator Usage: `d` (operator) `w` (motion)

Keybinding|Action
---|---
`d` | delete
`y` | copy
`v` | select
`c` | cut and change
`>` | indent right
`<` | indent left
`=` | auto-indent
`g~` | swap case
`gU` | uppercase
`gu` | lowercase
`!` | filter through external program

### Text Objects
Text Object Usage: `v` (operator) `i` ([i]nside or [a]round) `p` (text object)

Keybinding|Action
---|---
`p` | paragraph
`w` | word
`s` | sentence
`[` | a `[]` block
`(` | a `()` block
`{` | a `{}` block
`<` | a `<>` block
`'` | a `''` block
`"` | a `""` block
`b` | a block `[(`
`B` | a block in `[(`
`t` | an xml or html tag block

### Folds
Keybinding|Action
---|---
`zo` | open fold
`zO` | open fold recursively
`zc` | close fold
`zC` | close fold recursively
`za` or `zA` | toggle fold
`zM` | close all folds
`zR` | open all folds
`zm` | fold more
`zr` | fold less
`zx` | update folds

### Misc Navigation
Keybinding|Action
---|---
`%` | nearest/matching `{[()]}`
`[(` / `[{` / `[<` | previous `(` / `{` / `<`
`](` / `]{` / `]<` | next `(` / `{` / `<`
`[m` | previous method start
`[M` | previous method end

### Jumping
Keybinding|Action
---|---
`<C-O>` | go back to previous location
`<C-I>` | go forward

### Counters
Keybinding|Action
---|---
`<C-A>` | Increment number under cursor
`<C-X>` | decrement number under cursor

### Misc
Keybinding|Action
---|---
`.` | repeat last command
`:center [width]` | center text
`:right [width]` | right align text
`:left` | left align text
`<C-R>=[expression` | evaluate and write answer to expression (only works in insert mode)

### Marks
Keybinding|Action
---|---
`` `^`` | move to last position of cursor in insert mode
`` `.`` | move to last change in buffer
`` `"`` | move to last exited place in buffer
`` `0`` | move to last file edited
`''` | back to line jumped from
`` ` ` `` | back to position jumped from
`` `[`` | move to beginning of last changed or yanked text
`` `]`` | move to end of last changed or yanked text
`` `<`` | move to beginning of last visual selection
`` `>`` | move to end of last visual selection
`ma` | mark cursor position as mark `a`
`` `a`` | jump to mark `a`
`'a` | jump to beginning of line of mark `a`
`d'a` | cut from current line until line of mark `a`
``d`a`` | cut from current position until position of mark `a`
`c'a` | change from current line until line of mark `a`
``c`a`` | change from current position until position of mark `a`
`y'a` | copy from current line until line of mark `a`
``y`a`` | copy from current position until position of mark `a`
`:marks` | list all marks
`:delm a` | delete mark `a`
`:delm a-d` | delete marks `a` through `d` (`a`,`b`,`c`,`d`)
`:delm abc` | delete marks `a`, `b`, `c`
