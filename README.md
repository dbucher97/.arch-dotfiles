# .dotfiles
My dotfiles for Arch Linux on Sway (Wayland).


To install
```
cd $HOME
git init --bare .dotfiles
echo "alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> .zshrc
source .zshrc
dots remote add origin https://github.com/dbucher97/.dotfiles.git
dots pull
```

for further commits and adds in this repo just use `dots` instead of `git`
