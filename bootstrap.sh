#!/bin/zsh
# zsh plugins
[ ! -d $HOME/.antigen ] && git clone https://github.com/zsh-users/antigen.git ~/.antigen

# clone repo
if [ ! -d $HOME/.dotfiles ] ; then
  git clone --bare https://github.com/d3n14l/dotfiles $HOME/.dotfiles
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
else
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME pull
fi
[ ! -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.old
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout master
source ~/.zshrc

# create .vim subdirectories
for d in backup swap undo; do
  [ ! -z $d ] && mkdir -p $HOME/.vim/$d
done

# setup vim plugins
[ ! -f $HOME/.vim/autoload/plug.vim ] && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c ":PlugStatus|PlugUpgrade|PlugInstall|PlugUpdate|q|q"
