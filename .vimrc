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

NeoBundleLazy 'nbouscal/vim-stylish-haskell', {
\  'autoload': { 'filetypes': ['hs'] },
\}

NeoBundleLazy 'frigoeu/psc-ide-vim', {
\  'autoload': { 'filetypes': ['purs'] },
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
noremap <Space>s :%!stylish-haskell<CR>
noremap <C-d> :bd<CR>

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

" swpファイルを作らない
set directory=~/.vimswap
