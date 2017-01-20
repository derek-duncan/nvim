"==================================================================================================
"Plugins
  call plug#begin('~/.vim/plugged')

    Plug 'ryanoasis/vim-devicons'
    Plug 'neomake/neomake'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
    Plug 'flazz/vim-colorschemes'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'elixir-lang/vim-elixir'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'mhartington/oceanic-next'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'mileszs/ack.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'slashmili/alchemist.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'janko-m/vim-test'
    Plug 'elzr/vim-json'
    Plug 'mustache/vim-mustache-handlebars'
    Plug 'rakr/vim-one'
    Plug 'mxw/vim-jsx'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'jaawerth/neomake-local-eslint-first'
    "Plug 'flowtype/vim-flow'

    "Plug 'othree/yajs.vim'
    "Plug 'Yggdroot/indentLine'

  call plug#end()

"==================================================================================================
"Formatting Options

  "General
    syntax on
    set smartcase
    set number
    set autoindent
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set foldmethod=manual
    set lazyredraw

  "Convert Tabs to Spaces
    set expandtab

  "Linewrap Indicator
    set colorcolumn=100

  "Filetype
    filetype plugin indent on

  "Cursor (performance settings)
    set nocursorline
    set nocursorcolumn

  "TrueColors
    if (has("termguicolors"))
      set termguicolors
    endif

  "Text
    set linespace=12
    set guifont=Knack\ Nerd\ Font:h14

  "Specific theme options
    "let g:airline_theme='tomorrow'
    let g:airline_theme='one'
    "enable true colors
      let g:one_termcolors=256

    "enable italics, disabled by default
      let g:oceanic_next_terminal_italic = 1
      let g:one_allow_italics = 1
    "enable bold, disabled by default
      let g:oceanic_next_terminal_bold = 1

    "Colorscheme
      set background=dark
      colorscheme one

  "Italic Comments
    highlight Comment cterm=italic gui=italic

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

  "Ignore folders in search and grep
    set wildignore+=node_modules/**

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
    nmap gl <Plug>(easymotion-f)
    nmap gh <Plug>(easymotion-F)

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

  "Quickfix open
    nnoremap <Leader>q :copen<CR>

  "Quickfix close
    nnoremap <Leader>Q :cclose<CR>

  "Use tab to forward cycle for deoplete
    inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

  "Use tab to backward cycle for deoplete
    inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

  "This unsets the 'last search pattern' register by hitting return
    nnoremap <CR> :noh<CR><CR>

  "VimTest Mappings
    nmap <silent> <leader>t :TestNearest<CR>
    nmap <silent> <leader>T :TestFile<CR>
    nmap <silent> <leader>a :TestSuite<CR>
    nmap <silent> <leader>l :TestLast<CR>
    nmap <silent> <leader>g :TestVisit<CR>

  "Don't autojump to ack result
    cnoreabbrev Ack Ack!
    cnoreabbrev Ag Ack!

  "Search for word under cursor
    nnoremap <Leader>s :Ack!<Space>

"==================================================================================================
"Plugin Options
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
    "let g:neomake_javascript_eslint_exe = '/usr/local/bin/eslint'
    let g:neomake_javascript_enabled_makers = ['eslint']

  "CtrlP
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
		let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

  "Airline tabline
    "let g:airline#extensions#tabline#enabled = 1

  "Just show the filename (no path) in the tab
    let g:airline#extensions#tabline#fnamemod = ':t'

  " Use deoplete.
    let g:deoplete#enable_at_startup = 1

  " After a re-source, fix syntax matching issues (concealing brackets):
    if exists('g:loaded_webdevicons')
      call webdevicons#refresh()
    endif

  "Use Ag with Ack
    if executable('ag')
      let g:ackprg = 'ag --vimgrep'
    endif

  "Alchemist
    let g:alchemist#elixir_erlang_src = "/usr/local/share/src"

  "VimTest
    let test#strategy = "neovim"

  "Disable hidden JSON quotes
    let g:vim_json_syntax_conceal = 0

  "Allow JSX in normal JS files
    let g:jsx_ext_required = 0

  "Setup library syntaxes
    let g:used_javascript_libs = 'jquery,lo-dash,react,ramda,chai'

  "Enable Flow syntax
    let g:javascript_plugin_flow = 1

  "Flow
    "let g:flow#autoclose = 1

"==================================================================================================
"Autocommands
  augroup config
    autocmd!

    "Linting
      autocmd BufWritePost * Neomake

    "Make postcss files work with sass
      autocmd BufRead,BufNewFile *.pcss set filetype=sass
      autocmd BufRead,BufNewFile *.css set filetype=sass
  augroup END
