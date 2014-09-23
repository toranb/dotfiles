"===================================================================================
"         FILE:  ruby.vim
"  DESCRIPTION:  Settings that load only for files with the .rb extension
"       AUTHOR:  IMT Apps
"===================================================================================
"
" Settings for proper indentation
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal smarttab
setlocal expandtab

" Make sure we use the correct comment string in vim-commentary plug-in
set commentstring=#\ %s
