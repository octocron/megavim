# :trollface: Neovim with NixOS
> LazyVim is either full setup as LazyVim manages or as a plugin.
## Starter vs Plugin
#### :baby_bottle: Starter by LazyVim
- Template use [LazyVim](https://github.com/LazyVim/LazyVim)
- Refer to the [documentation](https://lazyvim.github.io/installation) to install Starter.
- Using started makes it difficult to remove unwanted plugins.
- No clear methodology, this approach sucked.
- Chosing managed by LazyVim means this repo is useless.

#### :building_construction: megavim uses LazyVim as a plugin, selectively adds features.
- This repo started with blank slate, therefore is uncluttered.
- Has clear methodology, making it easy to maintain.
- Unwanted features are fully removable by deleting unwanted lua file under plugins folder
- Wanted features just add the lua file following the plugins instructions according to LazyVim.

## :floppy_disk: Install
```zsh
# clone megavim
git clone git@gitlab.com:megacron/megavim.git ~/.config/nvim
# remove .git folder, so you can add to your own repo
rm -rf ~/.config/nvim/.git
```
If you have neovim already and just want to try it out, backup Neovim files:
```zsh
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## :joystick: Usage
```zsh
nvim                # launched nvim at splash screen @pwd
nvim .              # launch @pwd without splash
```

### :bulb: File Commands
```zsh
:Lazy               # manage lazyvim plugin
:Glow               # render markdown in a popup window
```
### :keyboard: [keybindings](https://www.lazyvim.org/keymaps)
```zsh
<space>             # neovim leader key
\                   # local leader key
<C-a>               # tmux leader key if using my config
```

### :necktie: Delta
```zsh
# install for mac & config
brew install git-delta

# open :LazyGit > press 1 > press e then save the following:
git:
  paging:
    colorArg: always
    pager: delta --dark --paging=never
```
