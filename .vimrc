set nocompatible " 不兼容vi，去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set cursorline " 突出显示当前行
filetype off " 检测：关闭 plugin
set fileencodings=ucs-bom,utf-8,chinese,big5,latin1 " 字符编码

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'DoxygenToolkit.vim'
let g:DoxygenToolkit_commentType="C++"
let g:DoxygenToolkit_authorName = "mankui1993@163.com"
let s:licenseTag = "\<enter>"
let s:licenseTag = s:licenseTag."Copyright (c) "
let s:licenseTag = s:licenseTag. strftime("%Y")
let s:licenseTag = s:licenseTag." tools.jiningrenjia.com, Inc. All Rights Reserved"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_versionString = ""
let g:doxygen_enhanced_color = 1

Plugin 'a.vim'

Plugin 'The-NERD-tree'
let g:NERDTreeDirArrows = 0
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.tgz$', '\.tar\.gz$', '\~$']

Plugin 'SuperTab'
Plugin 'twilight256.vim'
"Plugin 'cscope.vim'

Plugin 'tabpage.vim'
set showtabline=2 

Plugin 'grep.vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" common config
set autoindent
set cindent
set ruler 
set number
set expandtab
set tabstop=4
set shiftwidth=4
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

colorscheme twilight256

if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

vmap y :w !pbcopy<CR><CR>
set sts=4
set nobackup
set smarttab
set magic
set showcmd
set hidden
