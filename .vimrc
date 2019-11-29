" favorite default settings "
set exrc                         "source .vimrc from working directory
set secure                       "disable modeline for security
set wrap                         "wrap lines
set wrapmargin=2                 "number of characters that are vacated between
                                 "linebreak and right edge
set linebreak                    "wrap linebreak does not occur on symbols
set tabstop=2                    "default indentation = 2
set softtabstop=2                "soft tabstop to 2
set expandtab                    "use space instead of tabs for indentation
set number                       "show line number on the left
set showmatch                    "show matching braces
set showcmd                      "show visual command selection
set nocompatible                 "use non-compatible features
set wildmenu                     "enhance command line completion
set wildmode=longest:list,full   "first tab autocomplete command, second tab
                                 "each instruction will be selected in turn
set backspace=indent,eol,start   "backspace can go back to previous line, this
                                 "may not
                                 "always be a good idea when editing large
                                 "files
set wildchar=<Tab>               "expand command line using tab
set splitbelow                   "more natural horizontal split
set splitright                   "more natural vertical split
set history=1000                 "remember previous 1000 commands
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
"automatic XML formatting of current file using unix command xmlint
"TODO: make <C-f> context dependent format, i.e. format based on source code
"type
"disable if no xmlint
"map <C-f> <Esc>:1,$!xmllint --format -<CR>
"set vim to current file's working directory
"map <C-y> <Esc>:cd %:p:h<cr>

" make code formatting shift operation keep block selection
vnoremap < <gv
vnoremap > >gv

"set vim with relative line number
"set relativenumber
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

"""tabbing friendly commands"""
"map <C-l> <Esc>:tabn<cr>
"map <C-h> <Esc>:tabp<cr>
"map <C-m> <Esc>:tabnew<cr>
"map <C-e> <Esc>:tabclose<cr>

"""ctags friendly commands"""
"map <C-i> <Esc>:tn<cr>
"map <C-o> <Esc>:tp<cr>

"bind <C-f> to fuzzy finder
"map <C-f> <Esc>:FZF<cr>

"""display preference"""
set bg=dark                      "dark background
"colorscheme relaxedgreen         "set vim theme NOTE: need to download additional theme
                                 "plugin package
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

"""setup search path for gf command"""
"let &path.=""
"set includeexpr=substitute(v:fname,'\\.','/','g')

"""setup build system"""
set makeprg=make\ -j9
nnoremap <F4> :make!<cr>

"""setup launch system"""
"nnoremap <F3> :!./program<cr>

"""Python flagging unnecessary white space
au BufRead,BufNewFile *.c, *.h, *.cpp match BadWhitespace /\s\+$/

"""Disable folding for markdown
set nofoldenable

"""setting the old status line for vim"""
" return current working directory
function! CurDir()
  "NOTE: replace $HOME with the content of your home directory
  let curdir = substitute(getcwd(), '/home/armandli', "~", "g")
  return curdir
endfunction
set statusline=%F%m%r%h%w\ [%r%{CurDir()}%h]\ [TYPE=%Y][ASCII=\%03.3b][HEX=\%02.2B][POS=%04l,%04v][LEN=%L]
set laststatus=2

""" vim airline setup """
"let g:airline_powerline_fonts = 1
"let g:airline_mode_map = {
"  \ '__' : '-',
"  \ 'n'  : 'N',
"  \ 'i'  : 'I',
"  \ 'R'  : 'R',
"  \ 'c'  : 'C',
"  \ 'v'  : 'V',
"  \ 'V'  : 'V',
"  \ '' : 'V',
"  \ 's'  : 'S',
"  \ 'S'  : 'S',
"  \ '' : 'S',
"  \ }
"let g:airline#extensions#default#layout = [
"  \ [ 'a', 'b', 'c' ],
"  \ [ 'x', 'y', 'z' ]
"  \ ]
"let g:airline#extensions#default#section_truncate_width = {}
"let g:airline_section_b = '%{CurDir()}'
"let g:airline_section_x = '%Y'
"let g:airline_section_y = '0x%02.2B'
"let g:airline_theme='bubblegum'


""" enable/disable NERDTree """
"nmap <F6> :NERDTree<CR>

""" enable/disable TagList """
"nmap <F7> :TlistToggle<CR>

""" enable/disable tagbar """
"nmap <F8> :TagbarToggle<CR>

""" Vundle setup """
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'tpope/vim-sensible'
"Plugin 'tmhedberg/matchit'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-surround'
"Plugin 'bling/vim-airline'
"Plugin 'bkad/CamelCaseMotion'
"Plugin 'vim-scripts/argtextobj.vim'
"Plugin 'kana/vim-textobj-user'
"Plugin 'mattn/webapi-vim'
"Plugin 'junegunn/fzf'
"Plugin 'vim-scripts/VimCompletesMe'
"Plugin 'scrooloose/syntastic'
"Plugin 'tpope/vim-fugitive'
""Filesystem Manager
"Plugin 'scrooloose/nerdtree'
""Additional language syntax highlights
"Plugin 'derekwyatt/vim-scala'
"Plugin 'rust-lang/rust.vim'
"Plugin 'petRUShka/vim-opencl'
""Markdown
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
""Java IDE plugins
"Plugin 'SirVer/ultisnips'
"Plugin 'ervandew/eclim'
"Plugin 'Raimondi/delimitMate'
"Plugin 'airblade/vim-rooter'
""Color Schemes
"Plugin 'KabbAmine/yowish.vim'
"Plugin 'nanotech/jellybeans.vim'
""Directory explorer/Fuzzy Finder
"Plugin 'Shougo/unite.vim'
"Plugin 'kien/ctrlp.vim'
""Cheat sheet
"Plugin 'dbeniamine/cheat.sh-vim'
"Plugin 'thaerkh/vim-workspace'
"Plugin 'tpope/vim-obsession'
"Plugin 'jreybert/vimagit'
"Bundle 'edkolev/tmuxline.vim'
"call vundle#end()
"filetype plugin indent on

""Vim Workspace Configuration
"nnoremap <leader>s :ToggleWorkspace<CR>
"let g:workspace_autosave_always = 1
"let g:workspace_session_name = '.Session.vim'

""""" Reminders on must-have vim plugins """""
" vim-a     : quick switcher between source and header file using :AS :AV
" vim-align : automatically align lines based on character, e.g. :1,2Align =
" argtextobj : add special motion for function parameter text objects
" CamelCaseMotion : special motion for camel case text
" vim mini-buffer explorer : :BufExplorer or :BufExplorerVerticalSplit
" vim surround : switch surrounding of text with different character, e.g.
"                cs'<q> -> change surrounding charater from ' to <q>
"                ds" -> remove surrounding character "
"                cst" -> change surrounding tag to "
"                ysiw] -> sourrnding curent word with []
"                yss) -> sourrnding entire line in ()
" vim snippet : generates snippet code with keyword + <tab> + <c-j> for
"               switching between components of the snippet
" NERDTree : filesystem explorer with many capabilities, use ? or :h NERDTree
" vim-textobj-user : allow user to define custom text objects
" vim taglist : list vim tags in a pane using :TlistToggle
" vim powerline : for beautiful vim status bar
" vim airline : light weight powerline replacement for vim status line
" Vundle : vim package manager
" YouCompleteMe : C-lang auto text completion
