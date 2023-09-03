# Locations for various files
ZSH_ROOT=~/.zsh
THEMES=~/.zsh/zplug/repos/chriskempson/base16-shell/scripts

#################### ZPlug ####################
# Set ZPlug home
export ZPLUG_HOME=~/.zsh/zplug
# Init ZPlug
source ~/.zsh/zplug/init.zsh

##### ZPlug Plugins #####
# Let ZPlug manage itself
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# Base16-Shell Color Theme
zplug chriskempson/base16-shell, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if [[ $(zplug check --verbose) ]]; then
    zplug install
fi

# Load zplug packages
zplug load

##### base16-shell #####
# Access colors present in 256 colorspace
let base16colorspace=256
# Load selected theme
source $THEMES/base16-ashes.sh

#################### Zsh User Configuration ####################
# Set editor
export EDITOR='nvim'

# Load user files
declare -a USR_FILES=(
    $(ls $ZSH_ROOT/user_files)
)
for file in "${USR_FILES[@]}"; do
    source $ZSH_ROOT/user_files/$file
done

# Modify prompt
PS1="%F{magenta}[bryce@%m %1~]%f %# "
