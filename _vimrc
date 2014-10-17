"====================================================================================
"	Filename:vimrc
"	Author:binn(边浩)
"	Email:bianhao.zb@foxmail.com
"	QQ:187292078
"====================================================================================
"------------------------------------------------------------------------------------
"------------------------------------------------------------------------------------
"初始设置
"------------------------------------------------------------------------------------
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1	"默认编码检测
set termencoding=cp936			"非GUI界面的vim乱码
language messages zh_CN.UTF-8	"提示信息乱码
set nocompatible				"兼容老版本vi脚本
set encoding=utf-8              "设置字符编码
source $VIMRUNTIME/vimrc_example.vim	
source $VIMRUNTIME/mswin.vim	"vim默认环境变量
colorscheme freya				"指定配色方案
"set guifont=Consolas:h11    
set guifont=Courier\ New:h10    "设置字体，字号为10
set laststatus=2                "状态栏一直显示
set go=							"默认隐藏菜单栏
behave mswin					"启用shift加方向键选择
set wildmenu					"vim自身命令行模式智能补全
set nobackup 					"默认不生成备份文件
set noswapfile					"不要生成swap文件
let mapleader=","				"设置映射键为,
cd ~\Documents\files            "设置默认保存路径
"------------------------------------------------------------------------------------
"编程习惯
"------------------------------------------------------------------------------------
set expandtab       "将制表符扩展为空格
set tabstop=4		"tab为4个空格
set shiftwidth=4    "设置格式化时制表符占用空格数
set softtabstop=4   "让 vim 把连续数量的空格视为一个制表符
set shiftwidth=4	"行间错的时候使用4个空格
set softtabstop=4 	"Backspace一次可以删掉4个空格
set nu!				"显示行号
set nowrap			"不自动换行 
set vb t_vb=		"屏蔽所有声音
set ai!				"设置自动缩进
set cursorline		"高亮显示当前行
set cursorcolumn    "高亮显示当前列
set smartindent		"智能对齐
set autoindent		"自动对齐
nmap <leader>m :nohlsearch<CR>		"把nohlsearch映射为m
"------------------------------------------------------------------------------------
"查找替换
"------------------------------------------------------------------------------------
set hlsearch	"高亮搜索关键字
set ignorecase	"搜索忽略大小写
set incsearch	"一边输入一边查询
set gdefault	"替换行内所有被匹配，而不是只是替换第一个
"------------------------------------------------------------------------------------
"状态栏设置
"------------------------------------------------------------------------------------
set ruler		"在编辑的过程中，右下角显示光标位置的状态行
set showcmd		"在命令行显示当前输入的命令
"------------------------------------------------------------------------------------
" 窗口操作的快捷键
"------------------------------------------------------------------------------------
nmap wv     <C-w>v     "垂直分割当前窗口
nmap wc     <C-w>c     "关闭当前窗口
nmap ws     <C-w>s     "水平分割当前窗口
"------------------------------------------------------------------------------------
"vundle设置
"------------------------------------------------------------------------------------
set nocompatible
filetype off									" 先关闭文件类型
set rtp+=$VIM/vimfiles/bundle/vundle/			" 将vundle路径添加到插件vim路径
call vundle#rc('$VIM/vimfiles/bundle/')         " 执行Vundle初始化
Bundle 'gmarik/vundle'					
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/jQuery'
filetype indent plugin on						" 安装完后打开文件类型
"------------------------------------------------------------------------------------
"< vim-airline > 插件设置
"------------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled=1      "开启tabline
let g:airline_theme="luna"                 "设置airline皮肤
"let g:airline_powerline_fonts=1
"------------------------------------------------------------------------------------
"< emmet > 插件设置
"------------------------------------------------------------------------------------
let g:user_emmet_expandabbr_key='<C-E>'
"------------------------------------------------------------------------------------
"< vim-indent-guides > 插件设置
"------------------------------------------------------------------------------------
"let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2                   "在第二大列开始显示
let g:indent_guides_guide_size=1                    "高亮的宽度
nmap <leader>l :IndentGuidesToggle<CR>              "映射成,l 
