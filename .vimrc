" ��������� ������, � ������� ��������� � ������ ������ ������
set cursorline

" ��������� ������ ������������
set guioptions-=T
" ��������� ����������� �������
set guioptions+=c
" ��������� ����������� ���� (��������� �������� ������ �����)
set guioptions-=e

" ������������� �����
set guifont=Monospace\ 9

" ���� -->
    " �� ��������� ���� ������
    set guioptions-=m

    " ������� ������� �������/����������� ���� -->
        function MyToggleMenu()
            let old_guioptions = &guioptions

            " ���� ���� � ������ ������ ������
            if stridx(old_guioptions, 'm') != -1
                set guioptions-=m
            else
                set guioptions+=m
            endif
        endfunction

        cmap <F12> <ESC>:call MyToggleMenu()<CR>
        imap <F12> <ESC>:call MyToggleMenu()<CR>
        nmap <F12> :call MyToggleMenu()<CR>
        vmap <F12> <ESC>:call MyToggleMenu()<CR>
    " ������� ������� �������/����������� ���� <--
" ���� <--









"�� ������ ���������� git
if has('win32') || has('win64')                                                               
   let g:plugged_home = '~/.vim/plugged' 
   let g:python_folder = '~\AppData\Local\Programs\Python\Python37-32\python.exe'     
else                                                                                          
    let g:plugged_home = '~/.vim/plugged' 
    let g:python_folder = ''                                              
    if empty(glob("~/.vim/autoload/plug.vim"))                                        
         execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'                              
     endif                                                                                     
endif   

set autoindent "�������� ����������� ��� ����������
set autochdir "������������� �������� ������� �������
set backspace=indent,eol,start "��������� Backspace ??
set cuc cul "������
set cursorline "�������� ������, ����������� � ������ ������ ��� ��������.
set confirm "����������� ����������� ���� ������������� ��� �������� �������������� �����.
set clipboard=unnamed "????????????????
set expandtab "���� �� ������� � ������ �� >>
set fileencodings=utf-8,cp1251,koi8-r,cp866
set foldmethod=manual "manual, syntax, indent | ����� �������� - ������� (��� ������� ������)
set foldopen=all "�������������� �������� ������� ��� ������ � ���
set hidden "������ ����� � ������� ������, � �� ��������� ��.
set history=1000 "��������� ������ ������.
set hlsearch "�������� ��������� ���������, ������� ������ � ������
set ignorecase "������������� ������� ��� ������
set iminsert=1 "��������� �� ��������� - ����������
set incsearch "��� ������ ������������� �� ��������� ����� � �������� ������ ������
set mouse=a "�������� ��������� ����
set mousehide "�������� ������ ���� ����� �������� �����
set nobackup "��������� �������� �������
set noerrorbells "��������� �������� ������ ��� �������.
set nolazyredraw "��������� ������� �����������
set noshowmatch "�� ������������ ������������� ������
set noshowmode "������� -- INSERT --
set noswapfile "��������� �������� �����
set visualbell "�� ������
set nowrapscan "������������� ����� ��� ���������� ����� �����
set nowritebackup "��������� �������� ������ ������ �� ������
set nrformats-=octal "������������ ������������ ��� ���������� ��� ���������� �����.
set relativenumber "��������� ������������� ������ �����
set scrolloff=1 "���������� ����� ������, ������� ����� ������� ���� � ���� �������.
set shiftwidth=4 "������ �������� �� >>
set shiftround "������ ��� ����������
set smartcase "������� ����� �������
set smarttab "����� ����� ������� ��� ������� �� � ������� tab.
set softtabstop=4 "���������� ��������, �������� ������ ��������� ������������ ��� ����������.
set spell "�������� �������� ����������
set t_vb= "�� ������!
set tabstop=4 "���������� ��������, �������� ������ ��������� ������������
set termencoding=utf-8 "��������� ���������
set title "��������� ����, ���������� ������������� ����.
set visualbell "�������� ����������� ������ (�������, � �� �������� ��� �������)
set whichwrap=b,s,<,>,[,],l,h "���������� ������ �� ��������� ������ ��� ������� �� ������� ������-����� �
set wildignore+=.pyc,.swp "������������ �����
set wrap "�������� ������� �����
set wildmenu "Display command line�s tab complete options as a menu.



syntax on
syntax enable


call plug#begin(g:plugged_home)
Plug 'bling/vim-airline' "������� ������� airline
Plug 'chriskempson/base16-vim' "������������ ���� ?
Plug 'easymotion/vim-easymotion' "��� ������
Plug 'ervandew/supertab'  "����� ���
Plug 'davidhalter/jedi-vim'
Plug 'lpenz/vimcommander' "������ ���������
Plug 'matze/vim-move' " ����������� ����� ���� Alt+J
Plug 'morhetz/gruvbox' "color sheme
Plug 'jonathanfilip/vim-lucius' "color sheme
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'scrooloose/nerdtree' "������ ���������
Plug 'tpope/vim-commentary'   "comment �� gc
Plug 'vim-airline/vim-airline-themes' "������� ������� airline
Plug 'Yggdroot/indentLine' "�������� ���� |�
"Plug 'jiangmiao/auto-pairs' "���� �������
Plug 'kien/ctrlp.vim' "�� ������ ����� ctrl+p
Plug 'tell-k/vim-autopep8'
Plug 'w0rp/ale' "�������� ����������  ??????????????????????

call plug#end()

filetype on
filetype plugin on
filetype plugin indent on


set wildignore=.git,.hg,
:au FocusLost * :wa


"<<<<<<<<<<<<<KEY<<<<<<<<<<<<<
imap jf <Esc>
let mapleader=','
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <silent> <F9> :cal VimCommanderToggle()<CR> "F3-view F4-edit F5-copy F6-move F7-create dir F8-del
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader> <Plug>(easymotion-prefix)
autocmd FileType python noremap <buffer> <F2> :call Autopep8()<CR>
inoremap <Esc> <Esc>:w<CR>
inoremap <leader>, <C-x><C-o>
nmap gn :bn<cr>
nmap gp :bp<cr>
nmap gd :bd<cr>
nnoremap <c-z> :u<CR>      "�������� ���������� ��������� ������
inoremap <c-z> <c-o>:u<CR>








"<<<<<<<<<NERDTree<<<<<<<<<<
au VimEnter * NERDTreeToggle C:\YandexDisk\python
let NERDTreeIgnore=['\.pyc$'] "����������
let g:NERDTreeChDirMode=2
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeShowBookmarks = 1



"<<<<<<<<<JEDI<<<<<<<<<<
let g:jedi#popup_select_first = 0
autocmd FileType python setlocal completeopt-=preview




"<<<<<<<<<COLOR<<<<<<<<<<
colorscheme gruvbox
"colorscheme lucius
set background=dark
    let g:airline_theme='dark' "'powerlineish'
    let g:airline#extensions#tabline#enabled = 1
if $COLORTERM == 'gnome-terminal'
      set t_Co=256 "����� ������ � ��������� ��������
    endif
let base16colorspace=256 "����� ������ � ��������� ��������
"colorscheme base16-default-dark "����� ������ � ��������� ��������
if has("termguicolors") "��������� True Color, ���� ��� �������� � ���������
    set termguicolors
endif






"<<<<<<<<<<<<<w0rp/Ale<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:ale_lint_on_enter = 5
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}




"<<<<<<<<<<<<<<<<PYTHON MODE<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let python_highlight_all = 1
let g:python_host_prog = python_folder
let g:python3_host_prog = python_folder
let g:pymode_python = 'python3'
let g:pymode_run = 1
let g:pymode = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_indent = 1
    " Enable breakpoints plugin
    let g:pymode_breakpoint = 1
    let g:pymode_breakpoint_key = '<leader>b' 
    	"Documentation
    let g:pymode_doc = 1
    let g:pymode_doc_key = '<F1>'
	"Linting
    let g:pymode_rope = 0 	
    let g:pymode_syntax = 0
	" syntax highlighting
    let g:pymode_syntax_all = 1
    let g:pymode_syntax_indent_errors = g:pymode_syntax_all
    let g:pymode_syntax_space_errors = g:pymode_syntax_all
	" Don't autofold code
    let g:pymode_folding = 0
    	" replace pdb to ipdb ??????????????
    iab ipdb import ipdb; ipdb.set_trace()
let g:pymode_options_max_line_length = 88
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1
call pymode#default("g:pymode_lint_message", 0)
let g:pymode_quickfix_maxheight = 6
let g:pymode_lint_cwindow = 0
autocmd FileType python setlocal ts=4 sts=4 sw=4
iab utf! # -*- coding: utf-8 -*-
set completeopt=menuone  "menuone,noinsert
    let g:pymode_options = 0
    let g:pymode_lint_write = 0 "�� ��������� ��� ������ ����������
    let g:pymode_folding = 0 "��� �� ����� ����-�������
    let g:pymode_rope_vim_completion = 0 "�� ������������ �������������� rope
    set completeopt-=preview "������ ������������ ����������� ���� � ������������� ��� omnicompletion




