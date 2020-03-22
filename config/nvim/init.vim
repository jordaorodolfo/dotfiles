" Just to make sure vim8 works...
set nocompatible

" making n and N better
nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

" Searching must me nice.
set incsearch
set hlsearch
set smartcase
set ignorecase

" Identation should be nice.
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set ruler
set expandtab

" No lines, no code
set number
imap kj <Esc>

" switch buffers without saving
set hidden

" no backups, i do my own
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" best of all keys
let g:mapleader=","
let g:maplocalleader=","

if exists('g:vscode')

else

  " auto install plug manager if missing
  call plug#begin('~/.config/nvim/plugged')

  " Make sure you use single quotes
  " Yeah, we all know that.

  " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
  "Plug 'junegunn/vim-easy-align'

  " Group dependencies, vim-snippets depends on ultisnips
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

  " On-demand loading
  "Plug 'scrooloose/nerdtree'

  " Plugin outside ~/.vim/plugged with post-update hook
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  "Shorcuts are nice; for comments, even better
  Plug 'scrooloose/nerdcommenter'

  "Ever used latex and vim? Marvelous.
  "Plug 'lervag/vimtex', {'for': 'tex'}

  "Web dev, everybody does.
  "Plug 'posva/vim-vue', {'for': 'vue'}

  " Can we make things more IDEish?
  Plug 'neomake/neomake'

  " Completing powers
  Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
  "Plug 'ncm2/ncm2'
  "Plug 'roxma/nvim-yarp'
  "Plug 'ncm2/ncm2-bufword'
  "Plug 'ncm2/ncm2-path'
  "Plug 'roxma/nvim-completion-manager'
  "Plug 'roxma/ncm-clang'

  " Pretty isn't bad, people.
  "Plug 'iCyMind/NeoSolarized'
  Plug 'flazz/vim-colorschemes'
  Plug 'joshdick/onedark.vim'
  "Plug 'Zenburn'
  Plug 'vim-airline/vim-airline'

  " Well... Git.
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'

  " Languages, languages everywhere
  Plug 'sheerun/vim-polyglot'

  " some more javascript and typescript, web stuff
  "Plug 'pangloss/vim-javascript.git', {'for': 'javascript'}

  " the surround plugin, very handy
  Plug 'tpope/vim-surround'

  " Org mode
  Plug 'jceb/vim-orgmode', {'for': 'org'}
  Plug 'tpope/vim-speeddating'
  Plug 'vim-scripts/utl.vim'

  " android specific
  " Plug 'hsanson/vim-android', {'for': ['java', 'kotlin']}

  " Kotlin
  " Plug 'udalov/kotlin-vim', {'for': 'kotlin'}

  " Java
  " Plug 'artur-shaik/vim-javacomplete2',  {'for': ['java', 'kotlin']}

  " Minizinc
  " Plug 'vale1410/vim-minizinc', {'for': ['mzn', 'minizinc']}

  " pandoc
  " Plug 'vim-pandoc/vim-pandoc', {'for': 'markdown'}
  " Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'markdown'}

  call plug#end()

  " Feeling thirsty.
  set termguicolors
  colorscheme onedark
  filetype plugin on

  " latex
  " let g:vimtex_compiler_latexmk#continuous = 1
  "if !exists('g:deoplete#omni#input_patterns')
  "let g:deoplete#omni#input_patterns = {}
  "endif
  "let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

  " lets make some snippet magic
  " let g:UltiSnipsExpandTrigger="<Tab>"
  " let g:UltiSnipsJumpForwardTrigger="<c-l>"
  " let g:UltiSnipsJumpBackwardTrigger="<c-h>"

  " If you want :UltiSnipsEdit to split your window.
  " let g:UltiSnipsEditSplit="vertical"

  " some integration for airline.
  let g:airline#extensions#tabline#enabled = 1

  " org mode agendas
  let g:org_agenda_files=['~/org/index.org']

  " Completion concerns
  " - deoplete
  "let g:deoplete#enable_at_startup = 1
  " - ncm2
  "autocmd BufEnter * call ncm2#enable_for_buffer()
  "set completeopt=noinsert,menuone,noselect

  " android project folder
  " let g:android_sdk_path = "/home/rodolfojordao/Android/Sdk"

  " Plugins specific configuration
  " CoC
  " " Use <C-l> for trigger snippet expand.
  imap <C-l> <Plug>(coc-snippets-expand)

  " Use tab for trigger completion with characters ahead and navigate.
  " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
  "inoremap <silent><expr> <TAB>
        "\ pumvisible() ? "\<C-n>" :
        "\ <SID>check_back_space() ? "\<TAB>" :
        "\ coc#refresh()
  "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  "function! s:check_back_space() abort
    "let col = col('.') - 1
    "return !col || getline('.')[col - 1]  =~# '\s'
  "endfunction

  " Use <c-space> to trigger completion.
  "inoremap <silent><expr> <c-space> coc#refresh()

  " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
  " Coc only does snippet and additional edit on confirm.
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  " Or use `complete_info` if your vim support it, like:
  " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

  " files
  nmap <leader>fs :w<Enter>
  nmap <leader>ff :FZF<Enter>
  nmap <leader>fc :e ~/.config/nvim/init.vim<Enter>
  " windows
  nmap <leader>wv <C-w>v<Enter>
  nmap <leader>wc <C-w>c<Enter>
  nmap <leader>wq <C-w>q<Enter>
  nmap <leader>wi <C-w>k<Enter>
  nmap <leader>wj <C-w>h<Enter>
  nmap <leader>wk <C-w>j<Enter>
  nmap <leader>wl <C-w>l<Enter>
  nmap <leader>wh <C-w>i<Enter>
  nmap <leader>ww <C-w>w<Enter>
  " buffers
  nmap <leader>bd :bd<Enter>
  nmap <leader>bn :bn<Enter>
  nmap <leader>bp :bp<Enter>
  " version control
  nmap <leader>gs :Gw<Enter>
  nmap <leader>gS :Gstatus<Enter>
  nmap <leader>gc :Gcommit<Enter>
  nmap <leader>gp :Gpush<Enter>
  nmap <leader>gP :Gpull<Enter>
  " vim
  nmap <leader>vq :q<Enter>

endif
