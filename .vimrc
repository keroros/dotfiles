" 基本设置
set nocompatible                             " 启用Vim增强功能
" 颜色与高亮设置
syntax on                                    " 启用语法高亮
set background=dark                          " 设置暗色背景
set number                                   " 显示行号
set cursorline                               " 高亮当前行
set laststatus=2                             " 始终显示状态栏
set hidden                                   " 允许隐藏未保存的缓冲区
" 搜索设置
set ignorecase                               " 搜索时默认不区分大小写
set smartcase                                " 搜索词包含大写字母时区分大小写
set incsearch                                " 启用增量搜索
set hlsearch                                 " 高亮搜索结果
" 禁用设置
set shortmess+=I                             " 禁用默认的Vim启动消息
set noerrorbells visualbell t_vb=            " 禁用声音提示
set mouse+=a                                 " 禁用鼠标支持
set showmatch                                " 显示匹配的括号
" 按键与缩进设置
set shiftwidth=2                             " 设置<<和>>命令的宽度为2
set backspace=indent,eol,start               " 回车键在插入模式下更易用
set softtabstop=4                            " 按回车键时删除2个空格
set tabstop=4                                " 设置Tab长度为4
set expandtab                                " 将Tab转换为空格
set smartindent                              " 启用智能缩进
" 字体与行间距设置
set guifont=Consolas\ 12                     " 设置英文字体
set guifontwide=LXGW\ WenKai\ GB\ Screen\ 12 " 设置中文字体
set linespace=5                              " 设置行间距

" 禁用Q键退出
nmap Q <Nop> 

" 禁用方向键
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

filetype plugin indent on " 根据文件类型加载插件和缩进规则

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['pom.xml', '.p4ignore']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<Left>
inoremap } {}<Left><CR><Esc>V<O

func SkipPair()
	if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'
		return "\<ESC>la"
	else
		return "\t"
	endif
endfunc
inoremap <TAB> <c-r>=SkipPair()<CR>

colo atom

vnoremap P "+p

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()
