source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh

# plugins from default library (oh-my-zsh)
plugins=(git docker fasd kubectl pass vi-mode z)
for plugin in $plugins
do
  antigen bundle $plugin
done

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle changyuheng/fz

antigen theme risto
#antigen theme maran
antigen apply

export EDITOR=vim
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.aliases ] && source ~/.aliases

