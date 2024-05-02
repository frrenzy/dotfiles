# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export GOROOT=/usr/local/go
export GOPATH=$HOME/projects/go

export PATH="/home/ivan/lua/lua-5.4.4/src:/usr/local/go/bin:/home/ivan/bin:/usr/local/bin:/home/ivan/.nvm/versions/node/v14.19.3/bin:/home/ivan/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/Users/Ivan/AppData/Local/Programs/Microsoft VS Code/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$HOME/lua-language-server/bin:$PATH"

export PATH="/home/linuxbrew/.linuxbrew/bin:$HOME/.local/bin:$PATH"

alias vi="nvim"
alias vim="nvim ."
alias commit="git add . && git commit -m"
alias push="git rev-parse --abbrev-ref HEAD | xargs -I{} git push -u origin {}"
alias delete_branches="git branch --merged > /tmp/mb && nvim /tmp/mb && xargs git branch -D < /tmp/mb"
alias amend="git add . && git commit --amend"
alias py="python3"
alias rmdir="rm -r"
alias log="git log --graph --oneline --decorate"
alias hlog="log | head"
alias st="git status"
alias gc="git checkout"
alias gcn="git checkout -b"
alias gcr="git checkout -"
alias gcm="git checkout master"
alias gcs="git checkout stage"
alias gcd="git checkout development"
alias gw="git worktree"

alias basis="cd ~/dev/basis"
alias app="cd ~/dev/fe-app"
alias configs="cd ~/dev/fe-configs"
alias down="cd ~/dev/fe-downtime-notifications"
alias loader="cd ~/dev/basis-loader/"

alias wms="cd ~/dev/okolo-wms-crm"
alias pbase="cd ~/dev/okolo-pbase"
alias admin="cd ~/dev/unified-admin/apps/okolo-courier-crm/"
alias crm="cd ~/dev/unified-admin/apps/okolo-crm/"
alias odp="cd ~/dev/odp-frontend"

alias config="cd ~/.config/nvim/ && vi"
alias zz="vi ~/.zshrc"
alias srh="rg . -e"
alias pkg="cat package.json | jq"

alias luamake=/home/ivan/lua-language-server/3rd/luamake/luamake
eval $(thefuck --alias)


export PATH=$HOME/bin:$HOME/bin:$HOME/.cargo/bin:$HOME/.nvm/versions/node/v16.15.1/bin:/home/linuxbrew/.linuxbrew/sbin:/home/linuxbrew/.linuxbrew/bin:$HOME/.local/bin:$HOME/lua-language-server/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/home/ivan/lua/lua-5.4.4/src:/usr/local/go/bin:/home/ivan/bin:/usr/local/bin:/home/ivan/.nvm/versions/node/v14.19.3/bin:/home/ivan/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games


[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env (eto haskell)
# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
eval 
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
        
export PATH="/Users/ivansizov/Library/Caches/fnm_multishells/18498_1681128933408/bin":$PATH
export FNM_ARCH="arm64"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_MULTISHELL_PATH="/Users/ivansizov/Library/Caches/fnm_multishells/18498_1681128933408"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="/Users/ivansizov/Library/Application Support/fnm"
export FNM_LOGLEVEL="info"
autoload -U add-zsh-hook
_fnm_autoload_hook () {
    if [[ -f .node-version || -f .nvmrc ]]; then
    fnm use --silent-if-unchanged
fi

}

add-zsh-hook chpwd _fnm_autoload_hook \
    && _fnm_autoload_hook

rehash

fpath=( ~/.zsh_functions "$fpath[@]" )
autoload -Uz task

# bun completions
[ -s "/Users/ivansizov/.bun/_bun" ] && source "/Users/ivansizov/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


git-parent ()
{
  git show-branch -a \
| grep '\*' \
| grep -v `git rev-parse --abbrev-ref HEAD` \
| head -n1 \
| sed 's/[^\[]*//' \
| awk 'match($0, /\[[a-zA-Z0-9\/.-]+\]/) { print substr( $0, RSTART+1, RLENGTH-2 )}'
}
