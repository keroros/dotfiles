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

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# export export SYNOPSYS="/usr/software/synopsys"
export VCS_TARGET_ARCH="amd64"
export PATH="/home/qidc/Synopsys/vcs/O-2018.09-SP2/gui/dve/bin:"$PATH
export DVE_HOME="/home/qidc/Synopsys/vcs/O-2018.09-SP2/gui/dve"
export PATH="/home/qidc/Synopsys/vcs/O-2018.09-SP2/bin:"$PATH
export VCS_HOME="/home/qidc/Synopsys/vcs/O-2018.09-SP2"
# export VCS_ARCH_OVERRIDE="linux"
# verdi
export PATH="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2/bin:"$PATH
export VERDI_HOME="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
export LD_LIBRARY_PATH="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2/share/PLI/lib/LINUX64":$LD_LIBRARY_PATH
export VERDI_DIR="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
export NOVAS_INST_DIR="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
export NPI_PLATFORM="LINUX64_GNU_472"
export LD_LIBRARY_PATH="$NOVAS_INST_DIR/share/NPI/lib/LINUX64_GNU_520":$LD_LIBRARY_PATH
export NOVAS_HOME="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
# LICENSE
export SNPSLMD_LICENSE_FILE="/home/qidc/Synopsys/license/Synopsys.dat"
# export SNPSLMD_LICENSE_FILE=27000@your hostname
export SNPSLMD_LICENSE_FILE=27000@qidc
export LM_LICENSE_FILE="/home/qidc/Synopsys/license/Synopsys.dat"
alias lmli="/home/qidc/Synopsys/scl/2018.06/linux64/bin/lmgrd -c /home/qidc/Synopsys/license/Synopsys.dat"
# SCL
export PATH=/home/qidc/Synopsys/scl/2018.06/linux64/bin:$PATH
alias dve="dve -full64 &"
alias vcs64="vcs -full64"
alias verdi="verdi -full64 &"

source /etc/profile.d/lmli.sh

# Plugins
source $HOME/.oh-my-zsh/plugins/z/z.plugin.zsh # 跳转到常用文件夹
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # 命令高亮
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh #自动补全
source $HOME/.zsh/vi.zsh # 启用vim模式命令行

# dotfiles
alias shr="cd /mnt/hgfs/Share"
alias bashrc="gvim ~/.bashrc"
alias zshrc="gvim ~/.zshrc"
alias vimrc="gvim ~/.vimrc" 
alias tmuxrc="gvim ~/.tmux.conf"
alias gitrc="gvim ~/.gitconfig"

# script
alias t="zsh /home/qidc/Nutstore/Project/config/script/tmux_start.sh"
alias cn="python3 /home/qidc/Nutstore/Project/config/script/convert_num.py"
alias setup="zsh /home/qidc/Nutstore/Project/config/script/setup_module.sh"
alias gpa="zsh /home/qidc/Nutstore/Project/config/script/git_push_all.sh"
alias rm="zsh /home/qidc/Nutstore/Project/config/script/safe_rm.sh"

alias g="gvim"
alias v="vim"
alias a="ls -a"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias df="df -h"
alias sl="ls"
alias dc="cd"
alias tk="tmux kill-session -t mysession"

function e() {
    gpa
    if [ $? -eq 0 ]; then
        exit
    else
        echo "gpa script failed. Terminal will not exit."
    fi
}

function cdls() {
		builtin cd "$1" && ls
	}
alias cd="cdls"

alias ..="cd .."
alias ~="cd ~"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ga="git add ."
alias gc="git commit -m"
alias grao="git remote add origin"
alias gps="git push -u origin main"
alias gpl="git pull origin main"

# Find All .v Files Recursively
alias findv='find "$(pwd)" -name "*.v"'
# Find All .f Files Recursively
alias findf='find "$(pwd)" -name "*.f"'

