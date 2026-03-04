# 1. ENVIRONMENT & PATHS
export ZSH="$HOME/.oh-my-zsh"
export PNPM_HOME="/Users/vidip/Library/pnpm"
[[ ":$PATH:" != *":$PNPM_HOME:"* ]] && export PATH="$PNPM_HOME:$PATH"

# 2. OH MY ZSH CONFIG
ZSH_THEME="bira"
ENABLE_CORRECTION="true"
# fzf-tab must come before zsh-autosuggestions and zsh-syntax-highlighting
# Install: git clone git@github.com:Aloxaf/fzf-tab.git ~/.oh-my-zsh/custom/plugins/fzf-tab
plugins=(git fzf-tab zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 3. THEME CUSTOMIZATION
# Cyan timestamp on the right
RPROMPT='%F{cyan}[%D{%H:%M:%S}]%f'

# 4. HISTORY SETTINGS
export HISTFILE="${HOME}/.zsh_history"
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "
export HISTSIZE=50000       # History lines stored in memory.
export SAVEHIST=50000       # History lines stored on disk.
setopt HIST_IGNORE_ALL_DUPS # Never add duplicate entries.
setopt HIST_IGNORE_SPACE    # Ignore commands that start with a space.
setopt HIST_REDUCE_BLANKS   # Remove unnecessary blank lines.
setopt SHARE_HISTORY        # Share history across all sessions.

# 5. COMPLETION SYSTEM
autoload -U compinit
compinit
_comp_options+=(globdots)
zstyle ":completion:*" menu select=2
zstyle ":completion:*" auto-description "specify: %d"
zstyle ":completion:*" completer _expand _complete _correct _approximate
zstyle ":completion:*" format "Completing %d"
zstyle ":completion:*" group-name ""
# dircolors is a GNU utility that's not on macOS by default. With this not
# being used on macOS it means zsh's complete menu won't have colors.
command -v dircolors >/dev/null 2>&1 && eval "$(dircolors -b)"
zstyle ":completion:*:default" list-colors '${(s.:.)LS_COLORS}'
zstyle ":completion:*" list-colors ""
zstyle ":completion:*" list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ":completion:*" matcher-list "" "m:{a-z}={A-Z}" "m:{a-zA-Z}={A-Za-z}" "r:|[._-]=* r:|=* l:|=*"
zstyle ":completion:*" select-prompt %SScrolling active: current selection at %p%s
zstyle ":completion:*" use-compctl false
zstyle ":completion:*" verbose true
zstyle ":fzf-tab:*" use-fzf-default-opts yes
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls --color=always \${realpath}"

# 6. EXTERNAL TOOLS
# fnm (Node version manager)
eval "$(fnm env --use-on-cd --version-file-strategy=recursive --shell zsh)"

# 7. ALIASES
alias ga='git add .'
alias gcm='git commit -m'
alias gp='git push'
alias gst='git status -s'
alias reload='source ~/.zshrc'
