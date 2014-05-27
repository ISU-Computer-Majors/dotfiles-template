"This is an example vimrc file. This file is free to use, modify and distribute without charge. No warranty of any kind is provided with this file.
"Have this line first. This breaks compatibility between vi and vim
set nocompatible

"The rest of the settings are commented because a vimrc file should be your own. Blindly using someones vimrc is like letting your humanities major friend borrow your car.
"The settings are roughly listed from most common to least common

"These are the common settings to change:
"set shiftwidth=4
"set expandtab
"set tabstop=4
"set autoindent
"set smartindent
"syntax on
"set backspace=2
"set ruler
"set mouse=a

"numbering
"set number

"easy split navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" automatically reload vimrc when it's saved
"au BufWritePost .vimrc so ~/.vimrc


"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"allow larger yanks
"set viminfo='1000,<1000,s10,h

"auto save/load folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
"set pastetoggle=<F2>
"set clipboard=unnamed

"keeps section highlighted when doing section indenting
"vnoremap < <gv
"vnoremap > >gv

"There's some philosophically reason why Y should yank and the same way D deletes.
"map Y y$

"Remapping the esc key is a common practice as vim is about keeping your hands on the keyboard and the esc key is way in the corner. How to remap esc however causes more debate than a humanities major analyzing Hemmingway. Most commonly seen are remapping jk, using capslock and shift-space. Your mileage may vary with getting one of the last two working.
"inoremap jk <Esc>
