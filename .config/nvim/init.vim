" favorite default settings "
set secure                       "enable modeline for security
set wrap                         "wrap lines
set wrapmargin=2                 "number of characters that are vacated between
                                 "linebreak and right edge
set linebreak                    "wrap linebreak does not occur on symbols
set tabstop=2                    "default indentation = 2
set expandtab                    "use space instead of tabs for indentation
set number                       "show line number on the left
set showmatch                    "show matching braces
set showcmd                      "show visual command selection
set nocompatible                 "use non-compatible features
set wildmenu                     "enhance command line completion
set wildmode=longest:list,full   "first tab autocomplete command, second tab
                                 "each instruction will be selected in turn
set backspace=indent,eol,start   "backspace can go back to previous line, this may not
                                 "always be a good idea when editing large
                                 "files
set wildchar=<Tab>               "expand command line using tab
set splitbelow                   "more natural horizontal split
set splitright                   "more natural vertical split
set history=1000                 "remember previous 100 commands
set undolevels=50                "set maximum number of undos
set autoread                     "automatically read updates from other editor editing
                                 "the same file
set autowrite                    "auto write before quitting the buffer
syntax on                        "always have syntax highlight
set clipboard=unnamed
set mouse=a                      "enable mouse mode
set autochdir                    "switch working directory automatically to
                                 "directory of the file being edited

"""useful command mappings"""
"disable writing to file named 1 by mapping w1 to w!, which is forced save
ca w1 w!
"making quitting easier by mapping Q to q
ca Q q

" make code formatting shift operation keep block selection
vnoremap < <gv
vnoremap > >gv

"bind C-f to fuzzy finder
map <C-f> <Esc>:FZF<cr>

"""display preference"""
set bg=dark                      "dark background
colorscheme relaxedgreen         "set vim theme NOTE: need to download additional theme
set t_Co=256                     "use vim with colour

"""character encoding preference"""
set encoding=utf8
set termencoding=utf-8

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
set shiftwidth=2  "set autoindent uses 2 characters, matching tabstop

"""disable alarm bells in vim"""
set noerrorbells
set novisualbell
set t_vb=
set tm=500
autocmd GUIEnter * set visualbell t_vb=

""" enable file specific indentation and plugin
filetype plugin on
filetype indent on

"""Disable folding for markdown
set nofoldenable

""" plugin installation
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'bkad/CamelCaseMotion'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-neosnippet'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-tmux'
Plug 'brooth/far.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cloudhead/neovim-fuzzy'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'rust-lang/rust.vim'
Plug 'derekwyatt/vim-scala'
Plug 'petRUShka/vim-opencl'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'Shougo/vimshell.vim'
Plug 'airblade/vim-rooter'
Plug 'kien/ctrlp.vim'
Plug 'thaerkh/vim-workspace'
call plug#end()

"""airline setup
function! CurDir()
  "NOTE: replace $HOME with the content of your home directory
  let curdir = substitute(getcwd(), '/home/armandli', "~", "g")
  return curdir
endfunction

" don't overwrite symbols if they already exist
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'y', 'z' ]
  \ ]
let g:airline#extensions#default#section_truncate_width = {}
let g:airline_section_b = '%{CurDir()}'
let g:airline_section_x = '%Y'
let g:airline_section_y = '0x%02.2B'
let g:airline_theme='bubblegum'

