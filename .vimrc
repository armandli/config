" favorite default settings "
set wrap                         "wrap lines
set tabstop=2                    "default indentation = 2
set expandtab                    "use space instead of tabs for indentation
set number                       "show line number on the left
set showmatch                    "show matching braces
set showcmd                      "show visual command selection
set nocompatible                 "use non-compatible features.. not sure what this does
set backspace=indent,eol,start   "backspace can go back to previous line, this may not
                                 "always be a good idea when editing large
                                 "files
set wildchar=<Tab>               "expand command line using tab
set history=100                  "remember previous 500 commands
set undolevels=50                "set maximum number of undos
set autoread                     "automatically read updates from other editor editing
                                 "the same file
set autowrite                    "auto write before quitting the buffer
syntax on                        "always have syntax highlight

"""useful command mappings"""
"disable writing to file named 1 by mapping w1 to w!, which is forced save
ca w1 w!
"making quitting easier by mapping Q to q
ca Q q
"automatic XML formatting of current file using unix command xmlint
"TODO: make <C-f> context dependent format, i.e. format based on source code
"type
"disable if no xmlint
"map <C-f> <Esc>:1,$!xmllint --format -<CR>
"set vim to current file's working directory
"map <C-y> <Esc>:cd %:p:h<cr>

"""tabbing friendly commands"""
"map <C-l> <Esc>:tabn<cr>
"map <C-h> <Esc>:tabp<cr>
"map <C-m> <Esc>:tabnew<cr>
"map <C-e> <Esc>:tabclose<cr>

"""ctags friendly commands"""
"map <C-i> <Esc>:tn<cr>
"map <C-o> <Esc>:tp<cr>

"""display preference"""
set bg=dark                      "dark background
"colorscheme relaxedgreen         "set vim theme NOTE: need to download additional theme
                                 "plugin package

"""backup related preferences - keep 0 backups"""
set nobackup
set nowritebackup
set noswapfile

"""search specific preferences"""
set hlsearch                     "highlight matching searched terms
set incsearch                    "jump to matches while typing search term
set ignorecase                   "search ignores case

"""auto indentation preferences"""
set autoindent    "guess indentation
set smartindent   "a smarter indentation
set shiftwidth=2 "set autoindent uses 2 characters, matching tabstop

""" enable file specific indentation and plugin
filetype plugin on
filetype indent on

""" set F5 before and after pasting from system clipboard to avoid indenting problem at console vim
nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

"""disable alarm bells in vim"""
set noerrorbells
set novisualbell
set t_vb=
set tm=500
autocmd GUIEnter * set visualbell t_vb=

"""setting the status line for vim"""
" return current working directory
function! CurDir()
  "NOTE: replace $HOME with the content of your home directory
  let curdir = substitute(getcwd(), '$HOME', "~/", "g")
  return curdir
endfunction
set statusline=%F%m%r%h%w\ [%r%{CurDir()}%h]\ [TYPE=%Y][ASCII=\%03.3b][HEX=\%02.2B][POS=%04l,%04v][LEN=%L]
set laststatus=2

""" enable/disable tagbar
"nmap <F8> :TagbarToggle<CR>
