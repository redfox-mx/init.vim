set encoding=UTF-8

let g:nvim_home = expand( stdpath('config') )

let config_list = [
      \ '/plugins.vim',
      \ '/config.vim'
      \]

for files in config_list
  for f in glob(g:nvim_home . files, 1, 1)
    exec 'source' f
  endfor
endfor


" indentLine config
" let g:indentLine_setColors = 0

let g:indentLine_char = '|'

" coc config
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-eslint', 'coc-tsserver']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

