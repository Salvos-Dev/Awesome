# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/salvos/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliasing
alias ls='exa -alh'
alias PdaNet='export HTTPS_PROXY="http://192.168.49.1:8000"'
alias mac='sudo macchanger -r wlan0 && rfkill unblock wifi'
alias py='python'
alias vi='nvim'
alias grep='grep --color=auto'

# Exports
export SUDO_EDITOR='nvim'

# Prompt
PS1='[%n@%m %1~]$ '

pfetch
