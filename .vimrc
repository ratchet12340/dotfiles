set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

" line numbers
set number

" disable the AutoPairs shortcut
let g:AutoPairsShortcutToggle = ''

" show hidden files in NERDTree
let NERDTreeShowHidden=1
