"====================================================================================
" Description: 适合自己使用的vimrc文件，for macOS
"
" Version: 1
"====================================================================================


" 配置多语言环境
" UTF-8 编码
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=mM
set fencs=utf-8,gbk
language messages zh_CN.UTF-8			"提示信息乱码


set nocompatible				        "兼容老版本vi脚本
colorscheme desert				        "指定配色方案
behave mswin					        "启用shift加方向键选择
set wildmenu					        "vim自身命令行模式智能补全
set nobackup 					        "默认不生成备份文件
set noswapfile					        "不要生成swap文件
set nu!						            "显示行号

set expandtab					        "将制表符扩展为空格
set tabstop=4					        "tab为4个空格
set shiftwidth=4				        "设置格式化时制表符占用空格数
set nowrap					            "不自动换行
set ai!						            "自动缩进
set cursorline					        "高亮显示当前行
set cursorcolumn    				    "高亮显示当前列
set smartindent					        "智能对齐
set autoindent					        "自动对齐

set hlsearch					        "高亮搜索关键字
set ignorecase					        "搜索忽略大小写
set incsearch					        "一边输入一边查询

set laststatus=2                        "状态栏一直显示
set ruler					            "在编辑的过程中，右下角显示光标位置的状态行
set showcmd					            "在命令行显示当前输入的命令

nmap wv     <C-w>v     				    "垂直分割当前窗口
nmap wc     <C-w>c     				    "关闭当前窗口
nmap ws     <C-w>s     				    "水平分割当前窗口

set vb t_vb=					        "屏蔽所有声音

"vundle设置
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"插件列表
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/jQuery'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"vim-airline设置
let g:airline#extensions#tabline#enabled=1          "开启tabline

"emmet设置
let g:user_emmet_expandabbr_key='<C-E>'

"commentary设置
autocmd FileType apache setlocal commentstring=#\ %s

"html5设置
let g:html5_event_handler_attributes_complete = 0

"nerdtree设置
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
