syntax on
set number
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
source $HOME/.config/nvim/plug-config/coc.vim

nnoremap <c-w> :wq<CR>
nnoremap <c-n> :NERDTreeFocus<CR>
nnoremap i i<Right>
