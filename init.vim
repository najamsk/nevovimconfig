let mapleader = ","

filetype on
filetype indent on
filetype plugin on

set encoding=UTF-8

syntax on
set nocompatible
set hlsearch
set number relativenumber
set laststatus=2
set vb
set ruler
set spelllang=en_us
set autoindent
set colorcolumn=80
set mouse=a
set clipboard=unnamed
set noscrollbind
set wildmenu
set autochdir
set cursorline
set autoread
set pastetoggle=<Leader>a "\a before pasting to preserve indentation

hi Search cterm=NONE ctermfg=black ctermbg=red

" No more Arrow Keys, deal with it
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <lader>cd :lcd %:h<CR>e
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>


" Telescope bindings
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr> 

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"Open my vimrc file in vertical tab whenever I pressed ,vm
map <leader>vm :vsp $MYVIMRC<CR>
"Save my current file with ,w instead of typing :w every time.
nnoremap <leader>w :w!<CR>

" netrw

nnoremap - :Explore<CR>
nnoremap <leader>rf :MRf<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
autocmd FileType netrw setl bufhidden=delete

"-- netrw END

" plug 
call plug#begin()
"> Must Have
Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
Plug 'ctrlpvim/ctrlp.vim'      " https://github.com/ctrlpvim/ctrlp.vim
Plug 'ryanoasis/vim-devicons'  " https://github.com/ryanoasis/vim-devicons + https://github.com/ryanoasis/nerd-fonts/
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'jiangmiao/auto-pairs'
Plug 'yegappan/mru'
"Plug 'yegappan/mru'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tpope/vim-commentary'    " https://github.com/tpope/vim-commentary
Plug 'tpope/vim-fugitive' 
Plug 'airblade/vim-gitgutter'  " https://github.com/airblade/vim-gitgutter
Plug 'mkitt/tabline.vim'       " https://github.com/mkitt/tabline.vim

"> Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " https://github.com/neoclide/coc.nvim
Plug 'SirVer/ultisnips'                             " https://github.com/sirver/UltiSnips

"> FrontEnd
Plug 'mattn/emmet-vim'

"> Theme
Plug 'NLKNguyen/papercolor-theme' " https://github.com/NLKNguyen/papercolor-theme
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'sickill/vim-monokai'
Plug 'mhartington/oceanic-next'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'marko-cerovac/material.nvim'
Plug 'sainnhe/sonokai'
call plug#end()

"-- plug END



" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

nnoremap <Up>    :resize -2<CR>
nnoremap <Down>  :resize +2<CR>
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" :nnoremap <C-g> :NERDTreeToggle<CR>



" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" vim-gitgutter

set updatetime=500

"-- vim-gitgutter END

" papercolor-theme

set termguicolors
set background=dark
"colorscheme PaperColor
"-- papercolor-theme ENDm
if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

"colorscheme PaperColor
"colorscheme spaceduck
"colorscheme OceanicNext
colorscheme tokyonight
"colorscheme material
