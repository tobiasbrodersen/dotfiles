if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ~/.local.bin
set -x PATH ~/.local/bin/ $PATH

# Setting PATH for Python 3.11
# The original version is saved in /Users/toby/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"
set -x PATH "/Users/toby/Library/Python/3.12/bin" "$PATH"

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# brew psql
set -x PATH "/opt/homebrew/opt/libpq/bin" "$PATH"

# neovim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# kubernetes
alias k="kubectl"

# golang
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# python
function p
    set pythonVersion $argv[1]
    set filename $argv[2]

    if test -z "$pythonVersion" -o -z "$filename"
        echo "Usage: p <pythonVersion> <filename>"
        return 1
    end

    python$pythonVersion -m venv $filename
end
