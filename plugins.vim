let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim' 
let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

function! CurlOnLinux(path, url)
  if executable('curl')
    call system('curl -fLo ' . shellescape(a:path) . ' --create-dirs ' . a:url)
    if v:shell_error
      echom "Error downloading vim-plug. Please install it manually.\n"
      exit
    endif
  else
    echom "vim-plug not installed. Please install it manually or install curl.\n"
    exit
  endif
endfunction

if empty(glob(data_dir . '/autoload/plug.vim'))
  if has('win32')
    echom "Please provide vim-plug windows script or install it manually\n"
  else
    call CurlOnLinux(data_dir . '/autoload/plug.vim', plugurl)
  endif
endif

call plug#begin('~/.vim/plugged')

" -> theme
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

Plug 'Luxed/ayu-vim'

Plug 'vim-airline/vim-airline'

" -> editing

" add indentation with symbols
Plug 'Yggdroot/indentLine'

" trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" -> linter and lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" improve syntax with TS
Plug 'leafgarland/typescript-vim'

" javascript doc through jsDoc
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}

" -> navigation
Plug 'preservim/nerdtree'

Plug 'ryanoasis/vim-devicons'

" -> git
Plug 'tpope/vim-fugitive'

Plug 'mhinz/vim-signify'

call plug#end()
