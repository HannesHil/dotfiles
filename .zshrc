HISTSIZE=10000
SAVEHIST=10000
bindkey -v
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
# HYPHEN_INSENSITIVE="true"
export EDITOR='vim'

#antigen
[[ -a /usr/share/zsh-antigen/antigen.zsh ]] && source /usr/share/zsh-antigen/antigen.zsh
[[ -a /usr/share/zsh/share/antigen.zsh ]] && source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle archlinux
antigen bundle docker
antigen bundle rsync
antigen bundle command-not-found
antigen bundle sudo
antigen bundle systemd
antigen bundle docker-compose
antigen bundle zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

antigen theme robbyrussell
antigen apply

alias cpv="rsync -avhP"
alias dpsa="docker ps -a --format 'table {{.Image}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias dotfiles='/usr/bin/git --git-dir=/home/hannes/.dotfiles --work-tree=/home/hannes'

alias dig='echo "You want to use drill instead"'
alias nslookup='echo "You want to use drill instead"'
