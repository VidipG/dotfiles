# 1. ENVIRONMENT & PATHS
export ZSH="$HOME/.oh-my-zsh"
export PNPM_HOME="/Users/vidip/Library/pnpm"
[[ ":$PATH:" != *":$PNPM_HOME:"* ]] && export PATH="$PNPM_HOME:$PATH"

# 2. OH MY ZSH CONFIG
ZSH_THEME="bira"
ENABLE_CORRECTION="true"

# We've moved the Zplug plugins directly into the OMZ list
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# 3. THEME CUSTOMIZATION
# Adds a cyan timestamp [HH:MM:SS] to the right side
RPROMPT='%F{cyan}[%D{%H:%M:%S}]%f'

# 4. EXTERNAL TOOLS
# fnm (Node version manager)
eval "$(fnm env --use-on-cd --version-file-strategy=recursive --shell zsh)"

# 5. ALIASES
alias ga='git add .'
alias gcm='git commit -m'
alias gp='git push'
alias gst='git status -s'
alias reload='source ~/.zshrc'
