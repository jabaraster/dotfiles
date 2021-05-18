" 起動時にruntimepathにNeoBundleのパスを追加する
if has('vim_starting')
 if &compatible
  set nocompatible
 endif
 set runtimepath+=/Users/jabaraster/.vim/bundle/neobundle.vim/
endif

" NeoBundle設定の開始
call neobundle#begin(expand('/Users/jabaraster/.vim/bundle'))

" 自動保存
NeoBundle 'vim-scripts/vim-auto-save'
let g:auto_save = 1

" NeoBundleのバージョンをNeoBundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" インストールしたいプラグインを記述
" 下記は unite.vimというプラグインをインストールする例
NeoBundle 'Shougo/unite.vim'

NeoBundle 'vim-scripts/vim-auto-save'
let g:auto_save = 1

NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'clausreinke/typescript-tools'
NeoBundleLazy 'elmcast/elm-vim', {
\  'autoload': { 'filetypes': ['elm'] },
\}

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

NeoBundleLazy 'frigoeu/psc-ide-vim', {
\  'autoload': { 'filetypes': ['purs'] },
\}

NeoBundleLazy 'udalov/kotlin-vim', {
\  'autoload': { 'filetypes': ['kt'] },
\}

NeoBundleLazy 'nbouscal/vim-stylish-haskell', {
\  'autoload': { 'filetypes': ['hs'] },
\}

NeoBundle "frigoeu/psc-ide-vim"
NeoBundle 'leafgarland/typescript-vim'

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
noremap <Space>s :%!stylish-haskell<CR>
noremap <C-d> :bd<CR>
noremap <Space>s :%!stylish-haskell<CR>

set incsearch
set number
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:»-,trail:^,eol:↲,extends:»,precedes:«,nbsp:%
set showmatch
set smartcase
set smartindent
set guifont=Osaka-Mono:h11
set ambiwidth=double
set linespace=2
set cursorline
set expandtab
set shiftwidth=4

autocmd FileType html setlocal sw=2 sts=2 ts=2 et
autocmd BufNewFile,BufRead *.purs setf haskell

autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType less setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.purs setfiletype haskell

"ファイルの上書きの前にバックアップを作る/作らない
"set writebackupを指定してもオプション 'backup' がオンでない限り、
"バックアップは上書きに成功した後に削除される。
set nowritebackup
set noundofile

"バックアップ/スワップファイルを作成する/しない
set nobackup
set noundofile

" swpファイルを作らない
set directory=~/.vimswap

" HaskellSortImportをファイル保存時に実行する
" http://itchyny.hatenablog.com/entry/2016/01/23/190000
" augroup vimrc-haskell-sort-import
"   autocmd!
"   autocmd BufWritePre *.hs HaskellSortImport
" augroup END
