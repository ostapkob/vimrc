set guioptions-=T " Отключаем панель инструментов
set guifont=Monospace\ 9 " Устанавливаем шрифт
set guioptions-=m " По умолчанию меню скрыто


"не забудь установить git
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

set autoindent "Включить автоотступы как предыдущие
set autochdir "Автоматически изменять текущий каталог
set backspace=indent,eol,start "Параметры Backspace ??
set cuc cul "Курсор
set cursorline "Выделите строку, находящуюся в данный момент под курсором.
set confirm "Отображение диалогового окна подтверждения при закрытии несохраненного файла.
set clipboard=unnamed "????????????????
set expandtab "табы на пробелы и отстпы по >>
set foldmethod=manual "manual, syntax, indent | метод фолдинга - вручную (для обычных файлов)
set foldopen=all "Автоматическое открытие сверток при заходе в них
set hidden "Скрыть файлы в фоновом режиме, а не закрывать их.
set history=1000 "увеличить предел отмены.
set hlsearch "Включаем подсветку выражения, которое ищется в тексте
set ignorecase "игрнорировать регистр при поиске
set iminsert=1 "Раскладка по умолчанию - английская
set incsearch "При поиске перескакивать на найденный текст в процессе набора строки
set mouse=a "Включить поддержку мыши
set mousehide "Спрятать курсор мыши когда набираем текст
set nobackup "Отключить создание бекапаа
set noerrorbells "отключить звуковой сигнал при ошибках.
set nolazyredraw "Отключить ленивую буферизацию
set noshowmatch "не подсвечивать закрывающуюся скобку
set noshowmode "убирает -- INSERT --
set noswapfile "Отключить создание свапа
set visualbell "Не мигать
set nowrapscan "Останавливать поиск при достижении конца файла
set nowritebackup "Отключить создание файлов бекапа на запись
set nrformats-=octal "Воспринимать восьмеричное как десятичное при увеличении чисел.
set relativenumber "подвижные относительные номера строк
set scrolloff=1 "Количество строк экрана, которые нужно держать выше и ниже курсора.
set shiftwidth=4 "Размер отступов по >>
set shiftround "отступ как предыдущий
set smartcase "включиь умный регистр
set smarttab "Более умные отступы при вставке их с помощью tab.
set softtabstop=4 "количество пробелов, которыми символ табуляции отображается при добавлении.
set spell "включить проверку орфографии
set t_vb= "Не пищать!
set tabstop=4 "количество пробелов, которыми символ табуляции отображается
set termencoding=utf-8 "Кодировка терминала
set title "заголовок окна, отражающий редактируемый файл.
set visualbell "Включает виртуальный звонок (моргает, а не бибикает при ошибках)
set whichwrap=b,s,<,>,[,],l,h "Перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и
set wildignore+=.pyc,.swp "игнорировать файлы
set wrap "Включить перенос строк
set wildmenu "Display command line’s tab complete options as a menu.




syntax on
syntax enable


call plug#begin(g:plugged_home)
Plug 'bling/vim-airline' "цветная менюшка airline
Plug 'chriskempson/base16-vim' "Терминальные Темы ?
Plug 'easymotion/vim-easymotion' "изи моушен
Plug 'ervandew/supertab'  "супер таб
Plug 'davidhalter/jedi-vim'
Plug 'lpenz/vimcommander' "дерево каталогов
Plug 'matze/vim-move' " переместить кусок кода Alt+J
Plug 'morhetz/gruvbox' "color sheme
Plug 'jonathanfilip/vim-lucius' "color sheme
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'scrooloose/nerdtree' "дерево каталогов
Plug 'tpope/vim-commentary'   "comment по gc
Plug 'vim-airline/vim-airline-themes' "цветная менюшка airline
Plug 'Yggdroot/indentLine' "Красивые табы |¦
"Plug 'jiangmiao/auto-pairs' "авто кавычки
Plug 'kien/ctrlp.vim' "не четкий поиск ctrl+p
Plug 'tell-k/vim-autopep8'
Plug 'w0rp/ale' "Проверка синтаксиса  ??????????????????????

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
nnoremap <c-z> :u<CR>      "отменить проблемное сочетание клавиш
inoremap <c-z> <c-o>:u<CR>








"<<<<<<<<<NERDTree<<<<<<<<<<
au VimEnter * NERDTreeToggle C:\BI\python.lnk
let NERDTreeIgnore=['\.pyc$'] "исключения
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
      set t_Co=256 "может помочь с цветолвой политрой
    endif
let base16colorspace=256 "может помочь с цветолвой политрой
"colorscheme base16-default-dark "может помочь с цветолвой политрой
if has("termguicolors") "Поддержка True Color, если это доступно в терминале
    set termguicolors
endif






"<<<<<<<<<<<<<w0rp/Ale<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:ale_lint_on_enter = 5
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_linters = {'python': ['flake8']}
let g:ale_linters = {'python': ['Autopep8']}



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
    let g:pymode_lint_write = 0 "не проверять при каждом сохранении
    let g:pymode_folding = 0 "мне не нужен авто-фолдинг
    let g:pymode_rope_vim_completion = 0 "не использовать автодополнение rope
    set completeopt-=preview "убрать раздражающие всплывающие окна с документацией для omnicompletion:



