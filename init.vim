"==================================================================================================
"Plugins
  call plug#begin('~/.vim/plugged')

    Plug 'ryanoasis/vim-devicons'
    Plug 'neomake/neomake'
    Plug 'vim-airline/vim-airline'
    Plug 'flazz/vim-colorschemes'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'easymotion/vim-easymotion'
    Plug 'Yggdroot/indentLine'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'tpope/vim-surround'
    Plug 'elixir-lang/vim-elixir'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'mhartington/oceanic-next'

  call plug#end()

"==================================================================================================
"Formatting Options
  syntax enable
  syntax on
  set smartcase
  set number
  set autoindent
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  "Convert Tabs to Spaces
    set expandtab
  "Linewrap Indicator
    set colorcolumn=100
  "Theme
    colorscheme OceanicNext
    set background=dark
    set linespace=12
    set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16
    let g:airline_theme='oceanicnext'
  "Filetype
    filetype plugin indent on

"==================================================================================================
"Preferences
  "Autoread changes in buffer
    set autoread

  "No Swap Files
    set noswapfile

  "Prevent buffers from being forced to be written
    set hidden

  "Disable highlighted search
    set nohlsearch

"==================================================================================================
"Mappings
  "Set Leader
    let mapleader="\<space>"

  "Quickly edit/reload the nvim file
    nmap <silent> <leader>ev :e ~/.config/nvim/init.vim<CR>
    nmap <silent> <leader>sv :so %<CR>

  "Quick Write
    nnoremap <leader><leader> :w<CR>

  "NERDTree Open
    nnoremap <leader>nt :NERDTree<CR>

  "Set NERDTree to current file dir
    map <leader>r :NERDTreeFind<cr>

  "Easymotion Movements
    nnoremap gl <Plug>(easymotion-f)
    nnoremap gh <Plug>(easymotion-F)

  "Move vertically by visual line
    nnoremap j gj
    nnoremap k gk

  "Yank Until End of Line
    map Y y$

  "Window Controls
    nnoremap <C-h> <C-w>h
    "In iTerm, <C-h> produces <BS>, so map that as well
      nnoremap <BS> <C-W>h
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
    nnoremap <C-j> <C-w>j

  "Terminal settings
    tnoremap <Leader><ESC> <C-\><C-n>

  "Select pasted block
    nnoremap gV `[v`]

  "Move to the previous buffer with gp
    nnoremap gp :bp<CR>

  "Move to the next buffer with gn
    nnoremap gn :bn<CR>

  "List all possible buffers with gb and accept a new buffer argument [1]
    nnoremap gb :ls<CR>:b

"==================================================================================================
"Plugin Options
  if (has("termguicolors"))
    set termguicolors
  endif

  "NERDTree
    let g:NERDTreeMapHelp="<leader>nth"
    let g:NERDTreeShowHidden=1
    let g:NERDTreeWinPos = "right"
    let g:NERDTreeIgnore = ["\.DS_Store$", "files"]
  "Force relative line #'s in NERDTree
    augroup NERDTree
      autocmd FileType nerdtree set relativenumber
    augroup END

  "Easymotion
    let g:EasyMotion_do_mapping = 0
    let g:EasyMotion_leader_key = ''
    let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ01232456789!@#$%^&*()'

  "NeoMake
    let g:neomake_javascript_enabled_makers = ['eslint']

  "CtrlP
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
		let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

  "Airline tabline
    let g:airline#extensions#tabline#enabled = 1

  "Just show the filename (no path) in the tab
    let g:airline#extensions#tabline#fnamemod = ':t'

  " After a re-source, fix syntax matching issues (concealing brackets):
    if exists('g:loaded_webdevicons')
      call webdevicons#refresh()
    endif

"==================================================================================================
"Autocommands
  autocmd! BufWritePost * Neomake

  "Make postcss files work with sass
    autocmd BufRead,BufNewFile *.pcss set filetype=sass
