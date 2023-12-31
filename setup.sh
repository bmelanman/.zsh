#!/bin/zsh -x

# Get the current directory
ZSH_DIR=$(pwd)

# Make sure we're in the right directory
if [[ ! "$ZSH_DIR" == "~/.zsh" ]]; then
    echo "Please make sure this directory is located at ~/.zsh, and that this script was ran from that directory."
    exit 1
fi

# Create a history file and seesion folder if they don't exist
ZSH_HISTORY=$ZSH_DIR/.zsh_history
ZSH_SESSIONS=$ZSH_DIR/.zsh_sessions/

if [ ! -f $ZSH_HISTORY ]; then
    touch $ZSH_HISTORY
    chmod 600 $ZSH_HISTORY
fi
if [ ! -d $ZSH_SESSIONS ]; then
    mkdir -p $ZSH_SESSIONS
    chmod 700 $ZSH_SESSIONS
fi

# Get the names of all files in the home_files directory
declare -a FILES_TO_LINK=(
    $ZSH_DIR/.zshrc
    $ZSH_DIR/.zprofile
    $ZSH_HISTORY
    $ZSH_SESSIONS
)

# Create symlinks for all files in FILES_TO_LINK
for file in "${FILES_TO_LINK[@]}"; do
    ln -s -i $file ~/
done
