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

export EDITOR=vim
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.aliases ] && source ~/.aliases

