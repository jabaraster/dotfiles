" 起動時にruntimepathにNeoBundleのパスを追加する
if has('vim_starting')
 if &compatible
  set nocompatible
 endif
 set runtimepath+=/Users/jabaraster/.vim/bundle/neobundle.vim/
endif

" NeoBundle設定の開始
call neobundle#begin(expand('/Users/jabaraster/.vim/bundle'))

" NeoBundleのバージョンをNeoBundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" インストールしたいプラグインを記述
" 下記は unite.vimというプラグインをインストールする例
NeoBundleLazy 'Shougo/unite.vim', {
\ 'autoload': { 'commands': 'Unite' },
\}

NeoBundleLazy "tyru/open-browser.vim", {
\   'autoload' : {
\       'functions' : ["OpenBrowser"],
\       'commands'  : ["OpenBrowser", "OpenBrowserSearch"],
\       'mappings'  : ["<Plug>(openbrowser-smart-search)"]
\   },
\}

NeoBundleLazy 'cohama/vim-insert-linenr', {
\ 'autoload': { 'insert': 1 },
\}

NeoBundleLazy 'scrooloose/nerdtree', {
\ 'autoload': { 'commands': 'NERDTreeToggle' },
\}

" NeoBundle設定の終了
call neobundle#end()

filetype plugin indent on

" vim起動時に未インストールのプラグインをインストールする
NeoBundleCheck

map <Space>ss <Plug>(openbrowser-smart-search)
noremap ; :
noremap : ;
noremap <Space>.  :<C-u>edit $MYVIMRC<CR>
noremap <Space>,  :<C-u>source $MYVIMRC<CR>
noremap <Space>t :NERDTreeToggle<CR>

set incsearch
set number
set clipboard=unnamed
set tabstop=4
set list
set listchars=tab:»-,trail:^,eol:↲,extends:»,precedes:«,nbsp:%
set showmatch
set smartcase
set smartindent
set guifont=Osaka-Mono:h14
set ambiwidth=double
set linespace=2
set cursorline

