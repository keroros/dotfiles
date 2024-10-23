" 基本设置 
set nocompatible                             " 启用Vim增强功能

" 颜色与高亮设置
set background=dark                          " 设置暗色背景
set cursorline                               " 高亮当前行

" 禁用设置
set shortmess+=I                             " 禁用默认的Vim启动消息
set noerrorbells visualbell t_vb=            " 禁用声音提示
set mouse+=a                                 " 禁用鼠标支持

" 显示设置
set number                                   " 显示行号
set laststatus=2                             " 始终显示状态栏
set hidden                                   " 允许隐藏未保存的缓冲区
set showmatch                                " 显示匹配的括号

" 搜索设置
set ignorecase                               " 搜索时默认不区分大小写
set smartcase                                " 搜索词包含大写字母时区分大小写
set incsearch                                " 启用增量搜索
set hlsearch                                 " 高亮搜索结果

" 按键与缩进设置
set shiftwidth=4                             " 设置按下回车键插入4个空格
set backspace=indent,eol,start               " 回车键在插入模式下更易用
set softtabstop=4                            " 按回车键时删除2个空格
set tabstop=4                                " 设置tab长度为4
set expandtab                                " 将tab转换为空格
set smartindent                              " 启用智能缩进
" filetype plugin indent on                    " 根据文件类型加载插件和缩进规则
" autocmd FileType verilog setlocal tabstop=4 shiftwidth=4 softtabstop=4

" 字体与行间距设置
set guifont=Consolas\ 12                     " 设置英文字体
set guifontwide=LXGW\ WenKai\ GB\ Screen\ 12 " 设置中文字体
set linespace=5                              " 设置行间距

" 禁用Q键退出
nmap Q <Nop>

" 删除行尾空白字符
nnoremap <C-]> :%s/\s\+$//g<CR>

" 禁用方向键
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Tab键跳过右括号
func SkipPair()
    if getline('.')[col('.') - 1] == ')' ||
     \ getline('.')[col('.') - 1] == ']' ||
     \ getline('.')[col('.') - 1] == "'" ||
     \ getline('.')[col('.') - 1] == '}'
        return "\<ESC>la"
    else
        return "\t"
    endif
endfunc
" inoremap <TAB> <c-r>=SkipPair()<CR>

"vim-plug插件管理
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'             " onedark主题插件
Plug 'sheerun/vim-polyglot'             " 更多语言高亮插件
Plug 'itchyny/lightline.vim'            " 状态栏美化插件
Plug 'scrooloose/nerdtree'              " 文件树插件
Plug 'HonkW93/automatic-verilog'        " Verilog自动化插件
Plug 'jiangmiao/auto-pairs'             " 括号匹配插件
Plug 'junegunn/vim-easy-align'          " 对齐插件
call plug#end()

" onedark.vim插件配置
syntax on                               " 启用语法高亮
colorscheme onedark                     " 启用atom颜色主题

" nerdtree插件配置
map <silent> <C-e> :NERDTreeToggle<CR>
autocmd BufEnter * NERDTreeRefreshRoot
autocmd BufWritePost * NERDTreeRefreshRoot
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" automatic-verilog插件配置
let g:atv_snippet_att_en = 1
let g:atv_crossdir_mode = 0
let g:atv_snippet_project = 'Tiny RISC-V'
let g:atv_snippet_company = 'Peking University'
let g:atv_snippet_device = ''
let g:atv_snippet_author = 'Qidc'
let g:atv_snippet_email = 'qidc@stu.pku.edu.cn'
let g:atv_snippet_website = ''

" AutoPairs插件配置

" EasyAlign插件配置
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

