""" vimrc -- Vim settings
""" 2018 Christopher Birkbeck

set nocompatible                " Turns off vi-compatibility.
set history=500                 " History elements 

"" UI settings ""

filetype indent plugin on       " Detect file types. 

set number                      " Prints the current line number.
set cursorline                  " Highlights the current line.

set showmatch                   " Prints the matching bracket.

set ruler                       " Prints line and column number of the cursor.
set showmode                    " Prints non-normal mode status.
set showcmd                     " Prints partial commands.
set wildmenu                    " Command line completion.
set lazyredraw                  " Redraws screen during operations.
set confirm                     " Prints a confirmation command.

set laststatus=2                " Keeps the status bar on screen.

" Highlight special characters.
" Tab literals are | followed by periods.
" Trailing spaces are special dots.
" # indicates when a line extends off screen.
set list
set listchars=tab:\|*,trail:◦,extends:\#,nbsp:.

"" Mouse controls ""

set mouse=a                     " Use mouse in all modes.

"" Colours and Fonts ""

colorscheme murphy              " Default colour scheme.
syntax enable                   " Enable syntax colouring.
hi Normal ctermbg=none          " Transparency.

"" Tab settings ""

set expandtab                   " Replaces default tab with number of spaces.
set smarttab                    " Adds and deletes tabs intelligently. 
set shiftwidth=2                " Set the number of space for each indent.

set wrap                        " Turns on word wrap.
set ai                          " Turns on auto-indenting.
set si                          " Turns on smart-indenting.

"" Key bindings ""

" let mapleader = ","             " Set comma as the special user-defined key bindings.
" noremap <leader>, ,             " Binds backslash to the comma's typical function.

" Sets Control + h/j/k/l to move across Windows.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Map ,Return to save but not quit.
map <leader><CR> :w<CR>

" Prints the relative line numbers from cursor.
map <leader>n :call SetNumbering()

"" Search and replace ""

set ignorecase                  " Ignores case in searches.
set smartcase                   " Enables case-sensitivity with uppercase characters. 
set incsearch                   " Incrementally searches documents.
set hlsearch                    " Highlights search matches.

" Removes search highlighting. 
nnoremap <leader><space> :nohlsearch<CR>

"" Spell Check ""

" Enable spell check.
map <leader>ss :setlocal spell!<cr>

map <leader>sn ]s               " Go to next mispelled word.
map <leader>sN [s               " Go to previous mispelled word.
map <leader>sa zg               " Add to word whitelist.
map <leader>s? z=               " Corrects words.

"" Folding ""

set foldenable                  " Enable folds.
set foldlevelstart=10           "
set foldnestmax=10              "
set foldmethod=syntax           "

"" Functions ""

function SetNumbering()
  if &relativenumber
    set relativenumber! cursorline
  else
    set relativenumber cursorline!
  endif
endfunction
