" Separate settings vimrc.
"
set nocompatible

" === Color scheme ===
set termguicolors
colorscheme gruvbox
syntax enable
let g:gruvbox_improved_warnings=1
let g:gruvbox_italic=1
let g:gitgutter_override_sign_column_highlight = 0
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
" hi CursorLineNr guibg=none ctermbg=none
hi Comment cterm=italic gui=italic
" let g:lightline = {}
" let g:lightline.colorscheme = 'gruvbox'

" === General settings ===
let mapleader = ' '
let maplocalleader = ' '

filetype plugin indent on
set laststatus=2                                  " always display statusbar in window.
set noshowmode                                    " don't display mode in statusbar (using airline).
set ts=2                                          " tabs space equals 4 spaces
set softtabstop=2                                 " tabs space equals 4 spaces
set sw=2                                          " shift width for whift commands (>).
set expandtab                                     " use spaces instead of tabs.
set nu rnu                                        " display numbers using relative numbering.
set showcmd                                       " always show the command at the end of statusbar.
set scrolloff=5                                   " always keep 5 lines above and below cursor.
set visualbell                                    " flash if somethings not working.
set cursorline                                    " display cursorline.
set ignorecase                                    " ignores the case when searching.
set diffopt=filler,vertical                       " display diffs in vertical split and use filler lines.
set autoread                                      " automatically read changes.
set list                                          " display list chars.
set listchars+=tab:>\                             " display vertical lines in indentaions.
set listchars+=trail:•                            " mark trailing whitespaces.
set hidden                                        " allow buffer to be hidden without save.
set showmatch                                     " show matching brackets.
set hlsearch                                      " highilight all search results.
set colorcolumn=110                               " display column at row 120.
set textwidth=109                                 " max text width.
set nojoinspaces                                  " don't autoinsert two spaces when joining lines with '.'
set formatoptions+=j                              " remove comment character when joining lines.
set formatoptions+=n                              " indent numbered lists.
set foldmethod=indent                             " using indent fold method.
set foldlevelstart=99                             " always unfold everythong on open.
let &showbreak='↳ '                               " display this char when breaking a line.
set breakindent                                   " indent wrapped lines.
set breakindentopt=sbr                            " use the arrow.
set updatetime=750                                " update time for CursorHold
set completeopt=menuone,preview,noinsert          " set the wompletion window options
set shortmess+=c                                  " disable completion messages.
set mouse=a                                       " enable mouse support
set scl=yes:1                                     " always show sign column on left

" === Plugins ===
" CtrlP
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
nnoremap <leader>p :CtrlPClearCache<CR>

" Airline
let g:airline_powerline_fonts = 1

" indentLines
let g:indentLine_char = '▏'

" nerdcommenter
let g:NERDCommentEmptyLines = 1
let g:NERDCompactSexyComs = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" Emmet
"let g:user_emmet_leader_key = '<C-B>'
"
" GitGutter
let g:gitgutter_sign_added = "▌"
let g:gitgutter_sign_removed = "▌"
let g:gitgutter_sign_modified = "▌"
let g:gitgutter_sign_modified_removed = "▌"
highlight GitGutterAdd    guifg=#98971a guibg=none ctermfg=2 ctermbg=none
highlight GitGutterChange guifg=#458588 guibg=none ctermfg=3 ctermbg=none
highlight GitGutterDelete guifg=#cc241d guibg=none ctermfg=1 ctermbg=none
highlight GitGutterChangeDelete guifg=#b16286 guibg=none ctermfg=1 ctermbg=none
