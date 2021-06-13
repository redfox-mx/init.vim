let mapleader=","

function! ToggleNumber()
  if &number
    set nonumber
  else
    set number
  endif
endfunction

nmap <leader>n :call ToggleNumber()<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>te :split term://zsh<CR>

