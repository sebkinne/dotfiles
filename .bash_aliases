# Vim
alias nvim='[[ -n "${VIM}" ]] && echo "..." || $(which nvim) $@'
alias vim='nvim'

# Misc
alias p='ping 8.8.8.8'
alias cat='batcat --pager=never'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'
alias python='python3'
alias update='sudo apt update && sudo apt full-upgrade && sudo apt autoremove'
alias updatefw='sudo fwupdmgr refresh --force && sudo fwupdmgr update'

# Tmux
alias tn='tmux new -s $1'
alias tl='tmux ls'
alias ta='tmux a -t $1'

# Dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@'
