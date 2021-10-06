HISTSIZE=10000
SAVEHIST=10000
bindkey -v
ENABLE_CORRECTION="true"
HIST_STAMPS="%d/%m/%y %T"
HYPHEN_INSENSITIVE="true"
export EDITOR='vim'

### antigen - loads zsh plugin and such
[[ -a /usr/share/zsh-antigen/antigen.zsh ]] && source /usr/share/zsh-antigen/antigen.zsh
[[ -a /usr/share/zsh/share/antigen.zsh ]] && source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle archlinux
antigen bundle docker
antigen bundle rsync
antigen bundle command-not-found
antigen bundle sudo
antigen bundle golang
antigen bundle systemd
antigen bundle docker-compose
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle esc/conda-zsh-completion

antigen theme philips
antigen apply

[[ -a $HOME/.aliases ]] && source $HOME/.aliases

### from https://gist.github.com/magicdude4eva/2d4748f8ef3e6bf7b1591964c201c1ab 
### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
