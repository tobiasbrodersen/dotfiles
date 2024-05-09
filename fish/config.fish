if status is-interactive
    # Commands to run in interactive sessions can go here
end

# My work MAC has iso layout, map the section key to tilde
alias isoansi="sudo hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'"

# ~/.local.bin
set -x PATH ~/.local/bin/ $PATH

# Setting PATH for Python 3.11
# The original version is saved in /Users/toby/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# neovim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# kubernetes
alias k="kubectl"

# golang
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
