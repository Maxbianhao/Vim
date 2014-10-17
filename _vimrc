"====================================================================================
"	Filename:vimrc
"	Author:binn(�ߺ�)
"	Email:bianhao.zb@foxmail.com
"	QQ:187292078
"====================================================================================
"------------------------------------------------------------------------------------
"------------------------------------------------------------------------------------
"��ʼ����
"------------------------------------------------------------------------------------
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1	"Ĭ�ϱ�����
set termencoding=cp936			"��GUI�����vim����
language messages zh_CN.UTF-8	"��ʾ��Ϣ����
set nocompatible				"�����ϰ汾vi�ű�
set encoding=utf-8              "�����ַ�����
source $VIMRUNTIME/vimrc_example.vim	
source $VIMRUNTIME/mswin.vim	"vimĬ�ϻ�������
colorscheme freya				"ָ����ɫ����
"set guifont=Consolas:h11    
set guifont=Courier\ New:h10    "�������壬�ֺ�Ϊ10
set laststatus=2                "״̬��һֱ��ʾ
set go=							"Ĭ�����ز˵���
behave mswin					"����shift�ӷ����ѡ��
set wildmenu					"vim����������ģʽ���ܲ�ȫ
set nobackup 					"Ĭ�ϲ����ɱ����ļ�
set noswapfile					"��Ҫ����swap�ļ�
let mapleader=","				"����ӳ���Ϊ,
cd ~\Documents\files            "����Ĭ�ϱ���·��
"------------------------------------------------------------------------------------
"���ϰ��
"------------------------------------------------------------------------------------
set expandtab       "���Ʊ����չΪ�ո�
set tabstop=4		"tabΪ4���ո�
set shiftwidth=4    "���ø�ʽ��ʱ�Ʊ��ռ�ÿո���
set softtabstop=4   "�� vim �����������Ŀո���Ϊһ���Ʊ��
set shiftwidth=4	"�м���ʱ��ʹ��4���ո�
set softtabstop=4 	"Backspaceһ�ο���ɾ��4���ո�
set nu!				"��ʾ�к�
set nowrap			"���Զ����� 
set vb t_vb=		"������������
set ai!				"�����Զ�����
set cursorline		"������ʾ��ǰ��
set cursorcolumn    "������ʾ��ǰ��
set smartindent		"���ܶ���
set autoindent		"�Զ�����
nmap <leader>m :nohlsearch<CR>		"��nohlsearchӳ��Ϊm
"------------------------------------------------------------------------------------
"�����滻
"------------------------------------------------------------------------------------
set hlsearch	"���������ؼ���
set ignorecase	"�������Դ�Сд
set incsearch	"һ������һ�߲�ѯ
set gdefault	"�滻�������б�ƥ�䣬������ֻ���滻��һ��
"------------------------------------------------------------------------------------
"״̬������
"------------------------------------------------------------------------------------
set ruler		"�ڱ༭�Ĺ����У����½���ʾ���λ�õ�״̬��
set showcmd		"����������ʾ��ǰ���������
"------------------------------------------------------------------------------------
" ���ڲ����Ŀ�ݼ�
"------------------------------------------------------------------------------------
nmap wv     <C-w>v     "��ֱ�ָǰ����
nmap wc     <C-w>c     "�رյ�ǰ����
nmap ws     <C-w>s     "ˮƽ�ָǰ����
"------------------------------------------------------------------------------------
"vundle����
"------------------------------------------------------------------------------------
set nocompatible
filetype off									" �ȹر��ļ�����
set rtp+=$VIM/vimfiles/bundle/vundle/			" ��vundle·����ӵ����vim·��
call vundle#rc('$VIM/vimfiles/bundle/')         " ִ��Vundle��ʼ��
Bundle 'gmarik/vundle'					
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/jQuery'
filetype indent plugin on						" ��װ�����ļ�����
"------------------------------------------------------------------------------------
"< vim-airline > �������
"------------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled=1      "����tabline
let g:airline_theme="luna"                 "����airlineƤ��
"let g:airline_powerline_fonts=1
"------------------------------------------------------------------------------------
"< emmet > �������
"------------------------------------------------------------------------------------
let g:user_emmet_expandabbr_key='<C-E>'
"------------------------------------------------------------------------------------
"< vim-indent-guides > �������
"------------------------------------------------------------------------------------
"let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2                   "�ڵڶ����п�ʼ��ʾ
let g:indent_guides_guide_size=1                    "�����Ŀ��
nmap <leader>l :IndentGuidesToggle<CR>              "ӳ���,l 
