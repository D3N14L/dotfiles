#!/bin/zsh
# setup zsh
[ -z /bin/zsh ] && chsh /bin/zsh
if [ ! -d "$HOME/.oh-my-zsh" ] ; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
else
  env ZSH=$ZSH sh $ZSH/tools/upgrade.sh
fi
source .oh-my-zsh/oh-my-zsh.sh

# zsh plugins
[ ! -d $HOME/.antigen ] && git clone https://github.com/zsh-users/antigen.git ~/.antigen
source ~/.antigen/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
# Maybe include Z ?
#  https://github.com/rupa/z


# clone repo
if [ ! -d $HOME/.dotfiles ] ; then
  git --git-dir=$HOME/.dotfiles/ clone --bare https://github.com/d3n14l/dotfiles
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
else
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME pull
fi
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout master
source ~/.zshrc

# create .vim subdirectories
for d in backup swap undo; do
  [ ! -z $d ] && mkdir -p $HOME/.vim/$d
done

# setup vim
[ ! -f $HOME/.vim/autoload/plug.vim ] && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ":PlugStatus|PlugUpgrade|PlugInstall|PlugUpdate|q|q"
