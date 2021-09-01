syntax on
set number
set noswapfile
set clipboard=unnamed,unnamedplus
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug '42Paris/42header'
Plug 'pandark/42header.vim'
Plug 'andweeb/presence.nvim'
Plug 'nullvoxpopuli/coc-ember', {'do': 'yarn install --frozen-lockfile'}
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme onedark
filetype on

set noshowmode
let g:lightline = { 'colorscheme': 'onedark' }

source $HOME/.config/nvim/plug-config/coc.vim
let mapleader = " "

nnoremap ,m :-1read $HOME/.config/nvim/.snippets/main.c<CR>2j
nnoremap <leader>q :q<CR>
nnoremap <c-n> :NERDTreeFocus<CR>
nnoremap i i<Right>
map <C-S-V> "+gP
map <S-Insert> "+gP
map <C-S-C> "+y
nmap <f1> :FortyTwoHeader<CR>
inoremap { {}<Left>
inoremap ( ()<Left>
map ;; $i;<Esc>
map <c-t> :tabnew<CR>
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>. :tabn<CR>
map <leader>, :tabp<CR>
tnoremap <Esc> <C-\><C-n>
nmap <F2> :%s//g<Left><Left>

" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"
