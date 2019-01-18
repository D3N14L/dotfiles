source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh

# plugins from default library (oh-my-zsh)
plugins=(aws git docker fasd kubectl pass vi-mode z)
for plugin in $plugins
do
  antigen bundle $plugin
done

export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"

export EDITOR=vim

export GOPATH=$HOME/.go


antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle changyuheng/fz

#antigen theme risto # simple nice default
#antigen theme frisk
#antigen theme bira
#antigen theme jtriley
#antigen theme ys
antigen theme blinks
antigen apply
unset RPROMPT # Remove history counter

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.private ] && source ~/.private
[ -d ~/bin ] && export PATH=$PATH:$HOME/bin
if [ -d ~/.aliases.d ] ; then
  for f in $(ls $HOME/.aliases.d/); do
    source $HOME/.aliases.d/$f
  done
fi
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc ] && source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc ] && source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi
