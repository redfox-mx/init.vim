" set relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
set showcmd
set noswapfile
set splitbelow
set splitright

if has('nvim') || has('termguicolors')
  set termguicolors
endif

try
  " theme config
  colorscheme challenger_deep
  " ayu config
  " set background=light    " for light version of theme
  " set background=dark     " for either mirage or dark version.

  " let g:ayucolor="mirage" " for mirage version of theme
  " let g:ayucolor="dark"   " for dark version of theme

  " let g:ayu_italic_comment = 1 " defaults to 0.

  " colorscheme ayu
catch
  colorscheme slate
endtry

