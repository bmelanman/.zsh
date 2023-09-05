# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
eval "$(/opt/homebrew/bin/brew shellenv)" || true

# Added by Toolbox App
export PATH="$PATH:/Users/brycemelander/Library/Application Support/JetBrains/Toolbox/scripts"

export PICO_SDK_PATH="/Users/brycemelander/Code/pico/pico-sdk"

######################## Homebrew Settings ########################
# Diable homebrew hints
set HOMEBREW_NO_ENV_HINTS 1
