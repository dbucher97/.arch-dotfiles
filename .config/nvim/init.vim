call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'yuttie/comfortable-motion.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'chrisbra/Colorizer'

call plug#end()

syntax on
set termguicolors

colorscheme gruvbox
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
"hi CursorLineNr guibg=none ctermbg=none

set ts=4
set sw=4
set mouse=a
map <ScrollWheelDown> <C-d>
map <ScrollWheelUp> <C-u>
imap <ScrollWheelDown> <C-d>
imap <ScrollWheelUp> <C-u>

set nu rnu

map <Tab> :NERDTreeToggle<Return>


