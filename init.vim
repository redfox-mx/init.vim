call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-fugitive'

call plug#end()

let mapleader=","

set relativenumber
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set showcmd

function! ToggleRelativeNumber()
  if &relativenumber
    set norelativenumber
  else
    set relativenumber
  endif
endfunction

nmap <leader>n :call ToggleRelativeNumber()<CR>

if has('nvim') || has('termguicolors')
  set termguicolors
endif

colorscheme challenger_deep

" coc config
let g:coc_global_extensions = ['coc-html', 'coc-angular', 'coc-css', 'coc-eslint', 'coc-tsserver']

" nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>

" airline config
let g:airline#exxtensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
