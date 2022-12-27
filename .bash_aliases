# Vim
alias vim='nvim'

# Misc
alias p='ping 8.8.8.8'
alias cat='batcat --pager=never'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip -c'

# Tmux
alias tn='tmux new -s $1'
alias tl='tmux ls'
alias ta='tmux a -t $1'

# Dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@'
