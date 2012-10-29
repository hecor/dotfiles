"set nocompatible               
"filetype off                   

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" github repos
Bundle 'https://github.com/vim-scripts/Command-T.git'
Bundle 'https://github.com/vim-scripts/VOoM.git'
Bundle 'https://github.com/docunext/closetag.vim.git'
Bundle 'https://github.com/vim-scripts/taglist.vim.git'
Bundle 'https://github.com/vim-scripts/RST-Tables.git'
Bundle 'https://github.com/mattn/zencoding-vim.git'
Bundle 'https://github.com/hecor/snipmate.vim.git'
" ...

"Bundle 'Rykka/riv.vim'
" ning's patch :
"
Bundle 'https://github.com/idning/riv.vim.git' 
Bundle 'https://github.com/idning/tabular.git' 
Bundle 'https://github.com/idning/vim-rst-tables.git'
" ning's own plugins
Bundle 'https://github.com/idning/ning-vim-plugins.git'

filetype plugin indent on     " required!
syntax on
