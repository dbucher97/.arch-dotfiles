" David Buchers vimrc
" Greatly inspiered by Ben Bieker

" Plugins using vimplug
call plug#begin('~/.vim/plugged')
	" Colorscheme
	Plug 'morhetz/gruvbox'
	Plug 'ryanoasis/vim-devicons'

	" Utils
	Plug 'chrisbra/Colorizer'
	Plug 'yuttie/comfortable-motion.vim'
	Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
"	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'kien/ctrlp.vim'
	Plug 'junegunn/vim-easy-align'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'junegunn/gv.vim'
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/nerdcommenter'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Languages
	Plug 'dart-lang/dart-vim-plugin'
call plug#end()

source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plug/autocomplete.vim
