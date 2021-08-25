set number

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'brach': 'release'}
call plug#end()

map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <C-w> :wq<CR>
colorscheme nord
