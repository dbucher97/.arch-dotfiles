# .dotfiles
My dotfiles for Arch Linux on Sway (Wayland).


To install
```
cd $HOME
git init --bare .dotfiles
echo "alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> .zshrc
source .zshrc
dots remote add origin https://github.com/dbucher97/.dotfiles.git
dots pull origin master

```

for further commits and adds in this repo just use `dots` instead of `git`

Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install vim-plug
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
