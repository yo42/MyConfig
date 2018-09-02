set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

source ~/.vim_runtime/vimrcs/nerdtree-git-plugin.vim


try
source ~/.vim_runtime/my_configs.vim
catch
endtry
set nu
set encoding=utf-8

"SET Python Files Header
autocmd BufNewFile *.py,*.sh,*.c exec ":call SetComment()"
"let $author_name = "
"let $author_email = "
func SetComment()
if expand("%:e") == 'py'
call setline(1, '#!/usr/bin/env python ')
call setline(2, '# vim:set et ts=4 sw=4 fileencoding=utf-8:')
call setline(3, '# -*- coding: utf-8 -*-')
call setline(4, '# @Author: yo')
normal G
normal o
endif
endfunc

set nocompatible              " be iMproved, required
filetype off                  " required

let python_highlight_all=1
syntax on

"Py Syntax"
set textwidth=79  " 行宽超过 79 会被截断
set shiftwidth=4  " 操作符 >> 缩进 4 列；<< 减少缩进 4 列
set tabstop=4     " 一个 TAB 显示为 4 列
set expandtab     " 用空格代替 TAB
set softtabstop=4 " 敲击 TAB/BACKSPACE 插入 / 删除 4 个空格 
set shiftround    " 缩进为 'shiftwidth' 的倍数
set autoindent    " 新行缩进与上一行对齐

"PowereLine"
let g:Powerline_symbols = 'fancy'
let g:pymode_lint_on_write = 0
set fillchars+=stl:\ ,stlnc:\

"Nerdtreex"
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1
"将目录树设置为右侧"
let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

"autopep8设置"
let g:autopep8_disable_show_diff=1

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set shell=/bin/zsh
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tell-k/vim-autopep8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
" Plugin 'davidhalter/jedi-vim' "


" Plugin 'jnurmine/Zenburn'
" Plugin 'altercation/vim-colors-solarized'

