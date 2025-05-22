# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Powerlevel10k theme configuration for a modern purple look
ZSH_THEME="powerlevel10k/powerlevel10k"

# Powerlevel10k prompt settings for purple accents
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_COLOR_SCHEME='pink'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)
POWERLEVEL9K_OS_ICON_FOREGROUND='93'
POWERLEVEL9K_DIR_FOREGROUND='135'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='105'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='141'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='177'
POWERLEVEL9K_STATUS_OK_FOREGROUND='105'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='201'
POWERLEVEL9K_TIME_FOREGROUND='135'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction and verification
ENABLE_CORRECTION="true"
setopt correct

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Modern, productive plugin list
# Remove plugins that are loaded manually below and not present in Oh My Zsh plugins directory
plugins=(
  git
  zoxide
  fzf
  autojump
  safe-paste
  command-not-found
  thefuck
  colored-man-pages
  colorize
  gitfast
  history-substring-search
  web-search
  alias-finder
  common-aliases
)

# Note: zsh-autosuggestions, zsh-completions, and zsh-syntax-highlighting are loaded manually below and should not be in the plugins array.
# If you want Oh My Zsh to manage these plugins, symlink them into $ZSH_CUSTOM/plugins and add them back to the plugins array.
# For Powerlevel10k theme, ensure it is installed in $ZSH_CUSTOM/themes or $ZSH/themes, or use the Homebrew manual source as above if you prefer.

source $ZSH/oh-my-zsh.sh

# Prefer Homebrew locations for plugins and theme

# zsh-autosuggestions (Homebrew path)
if [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# zsh-syntax-highlighting (Homebrew path)
if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
# zsh-completions (Homebrew path)
fpath=(/opt/homebrew/share/zsh-completions $fpath)

# Plugin initializations for external plugins (if installed via Homebrew or manually)
# zsh-autosuggestions (Intel Mac path)
if [ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# zsh-syntax-highlighting (Intel Mac path)
if [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
# fzf key bindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# zoxide initialization
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
# thefuck alias
if command -v thefuck >/dev/null 2>&1; then
  eval "$(thefuck --alias)"
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
