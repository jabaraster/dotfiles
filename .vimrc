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
NeoBundle 'Shougo/unite.vim'

NeoBundleLazy 'Shougo/vimshell.vim', {
\  'autoload': { 'commands': ['VimShell'] }
\}

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

NeoBundleLazy 'elixir-lang/vim-elixir', {
\  'autoload': { 'filetypes': ['exs'] },
\}

NeoBundleLazy 'ryutorion/vim-itunes', {
\  'autoload': { 'function_prefix': 'itunes' },
\}

NeoBundleLazy 'itchyny/vim-haskell-sort-import', {
\  'autoload': { 'commands': 'HaskellSortImport' },
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
noremap <Space>t :NERDTree<CR>
noremap <C-d> :bd<CR>

noremap <expr> <Space>ig itunes#play()
noremap <expr> <Space>ip itunes#pause()
noremap <expr> <Space>is itunes#stop()
noremap <expr> <Space>in itunes#next()

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
set expandtab

"ファイルの上書きの前にバックアップを作る/作らない
"set writebackupを指定してもオプション 'backup' がオンでない限り、
"バックアップは上書きに成功した後に削除される。
set nowritebackup

"バックアップ/スワップファイルを作成する/しない
set nobackup

" swpファイルを作らない
set directory=~/.vimswap

" HaskellSortImportをファイル保存時に実行する
" http://itchyny.hatenablog.com/entry/2016/01/23/190000
augroup vimrc-haskell-sort-import
  autocmd!
  autocmd BufWritePre *.hs HaskellSortImport
augroup END
