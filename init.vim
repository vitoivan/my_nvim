syntax on
set number
set noswapfile
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'equalsraf/neovim-gui-shim'
Plug 'akiyosi/goneovim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'ajmwagar/vim-deus'
Plug 'vhakulinen/gnvim'
Plug '42Paris/42header'
Plug 'pandark/42header.vim'
Plug 'andweeb/presence.nvim'
Plug 'nullvoxpopuli/coc-ember', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

colorscheme nord
source $HOME/.config/nvim/plug-config/coc.vim

nnoremap ,m :-1read $HOME/.config/nvim/.snippets/main.c<CR>2j
nnoremap <c-q> :q<CR>
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
map <c-1> 1gt
map <c-2> 2gt
map <c-3> 3gt
map <c-4> 4gt
map <c-5> 5gt
map <c-.> :tabn<CR>
map <c-,> :tabp<CR>
tnoremap <Esc> <C-\><C-n>

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
