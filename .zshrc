# 初始化代码
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 配置 Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"                               # 设置powerlevel10k主题
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh                          # 加载powerlevel10k主题配置
plugins=(git)                                                         # 加载git插件
source $ZSH/oh-my-zsh.sh                                              # 加载默认配置文件
source $HOME/.oh-my-zsh/plugins/z/z.plugin.zsh                        # 跳转到常用文件夹插件
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # 命令高亮插件
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh         # 命令自动补全插件
source $HOME/.zsh/vi.zsh                                              # 终端启用Vim模式

# VCS & Verdi 配置
export VCS_TARGET_ARCH="amd64"
export PATH="/home/qidc/Synopsys/vcs/O-2018.09-SP2/gui/dve/bin:"$PATH   # VCS
export DVE_HOME="/home/qidc/Synopsys/vcs/O-2018.09-SP2/gui/dve"
export PATH="/home/qidc/Synopsys/vcs/O-2018.09-SP2/bin:"$PATH
export VCS_HOME="/home/qidc/Synopsys/vcs/O-2018.09-SP2"
export PATH="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2/bin:"$PATH   # Verdi
export VERDI_HOME="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
export LD_LIBRARY_PATH="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2/share/PLI/lib/LINUX64":$LD_LIBRARY_PATH
export VERDI_DIR="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
export NOVAS_INST_DIR="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
export NPI_PLATFORM="LINUX64_GNU_472"
export LD_LIBRARY_PATH="$NOVAS_INST_DIR/share/NPI/lib/LINUX64_GNU_520":$LD_LIBRARY_PATH
export NOVAS_HOME="/home/qidc/Synopsys/verdi/Verdi_O-2018.09-SP2"
export SNPSLMD_LICENSE_FILE="/home/qidc/Synopsys/license/Synopsys.dat"  # Lincese
export SNPSLMD_LICENSE_FILE=27000@qidc
export LM_LICENSE_FILE="/home/qidc/Synopsys/license/Synopsys.dat"
alias lmli="/home/qidc/Synopsys/scl/2018.06/linux64/bin/lmgrd -c /home/qidc/Synopsys/license/Synopsys.dat"
export PATH=/home/qidc/Synopsys/scl/2018.06/linux64/bin:$PATH           # SCL
alias dve="dve -full64 &"
alias vcs64="vcs -full64"
alias verdi="verdi -full64 &"
source /etc/profile.d/lmli.sh

# dotfiles别名
alias shr="cd /mnt/hgfs/Share"
alias bashrc="gvim ~/.bashrc"
alias zshrc="gvim ~/.zshrc"
alias vimrc="gvim ~/.vimrc"
alias tmuxrc="gvim ~/.tmux.conf"
alias gitrc="gvim ~/.gitconfig"

# script别名
alias t="zsh /home/qidc/Nutstore/Project/config/script/tmux_start.sh"
alias cn="python3 /home/qidc/Nutstore/Project/config/script/convert_num.py"
alias setup="zsh /home/qidc/Nutstore/Project/config/script/setup_module.sh"
alias gpa="zsh /home/qidc/Nutstore/Project/config/script/git_push_all.sh"
alias rm="zsh /home/qidc/Nutstore/Project/config/script/safe_rm.sh"

# git别名
alias ga="git add ."
alias gc="git commit -m"
alias grao="git remote add origin"
alias gps="git push -u origin main"
alias gpl="git pull origin main"

# 其他别名
alias g="gvim"
alias a="ls -a"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias findv='find "$(pwd)" -name "*.v"'   # 递归查找当前目录下的所有.v文件
alias findf='find "$(pwd)" -name "*.f"'   # 递归查找当前目录下的所有.v文件
alias tk="tmux kill-session -t mysession"
# 退出终端前推送所有仓库到Github
function e() {
    gpa
    if [ $? -eq 0 ]; then
        exit
    else
        echo "gpa script failed. Terminal will not exit."
    fi
}
# cd的同时列出目录下的所有文件
function cdls() {
		builtin cd "$1" && ls
	}
alias cd="cdls"
alias ..="cd .."
alias ~="cd ~"

