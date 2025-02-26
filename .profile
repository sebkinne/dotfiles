# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# aliases are defined in a separate file
if [ -f "$HOME/.bash_aliases" ]; then
    . $HOME/.bash_aliases
fi

# Misc
export EDITOR=nvim

# pathing
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=$PATH:/usr/local/go/bin
if [[ "$(which go)" != "" ]]; then
    export PATH=$PATH:$(go env GOPATH)/bin
fi

export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/bin/zig

# GCloud
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]; then . '/opt/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/opt/google-cloud-sdk/completion.bash.inc'; fi

# fzf
if [ -f "/usr/share/doc/fzf/examples/key-bindings.bash" ]; then
    . /usr/share/doc/fzf/examples/key-bindings.bash
fi
if [ -f "/usr/share/bash-completion/completions/fzf" ]; then
    . /usr/share/bash-completion/completions/fzf
fi
export FZF_COMPLETION_OPTS='--border --info=inline'
export FZF_DEFAULT_OPTS=' --color=fg:#c6ccd9,bg:#2e3440,hl:#a94a56 --color=fg+:#c6ccd9,bg+:#2e3440,hl+:#a94a56 --color=info:#92b279,prompt:#a34a55,pointer:#af5fff --color=marker:#92b279,spinner:#cfd5e3,header:#87afaf'
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"

# Rust
if [[ "$(which cargo)" != "" ]] && [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi
