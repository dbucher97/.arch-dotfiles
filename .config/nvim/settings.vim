" Separate settings vimrc.
"
set nocompatible

" === Color scheme ===
set termguicolors
colorscheme gruvbox
syntax enable
let g:gruvbox_improved_warnings=1
let g:gruvbox_italic=1
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
" hi CursorLineNr guibg=none ctermbg=none
hi Comment cterm=italic gui=italic
" let g:lightline = {}
" let g:lightline.colorscheme = 'gruvbox'

" === General settings ===
let mapleader = ' '
let maplocalleader = ' '

set laststatus=2                                  " always display statusbar in window.
set noshowmode                                    " don't display mode in statusbar (using airline).
set ts=4                                          " tabs space equals 4 spaces
set sw=4                                          " shift width for whift commands (>).
set nu rnu                                        " display numbers using relative numbering.
set showcmd                                       " always show the command at the end of statusbar.
set scrolloff=5                                   " always keep 5 lines above and below cursor.
set visualbell                                    " flash if somethings not working.
set cursorline                                    " display cursorline.
set ignorecase                                    " ignores the case when searching.
set diffopt=filler,vertical                       " display diffs in vertical split and use filler lines.
set autoread                                      " automatically read changes.
set list                                          " display list chars.
set listchars+=tab:\|\                            " display vertical lines in indentaions.
set listchars+=trail:•                            " mark trailing whitespaces.
set hidden                                        " allow buffer to be hidden without save.
set showmatch                                     " show matching brackets.
set hlsearch                                      " highilight all search results.
set colorcolumn=120                               " display column at row 120.
set textwidth=79                                  " max text width.
set nojoinspaces                                  " don't autoinsert two spaces when joining lines with '.'
set formatoptions+=j                              " remove comment character when joining lines.
set formatoptions+=n                              " indent numbered lists.
set foldmethod=indent                             " using indent fold method.
set foldlevelstart=99                             " always unfold everythong on open.
let &showbreak='↳ '                               " display this char when breaking a line.
set breakindent                                   " indent wrapped lines.
set breakindentopt=sbr                            " use the arrow.
set updatetime=750                                " update time for CursorHold
set completeopt=menuone,preview,noinsert,noselect " set the wompletion window options
set shortmess+=c                                  " disable completion messages.

" === Plugins ===
" CtrlP
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'

" Dart Lang
let g:dart_format_on_save = 1
autocmd FileType dart setlocal shiftwidth=2 softtabstop=2 expandtab

" Airline
let g:airline_powerline_fonts = 1
