if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundle自身を管理下に置く
NeoBundleFetch 'Shougo/neobundle.vim'

" インストールするプラグインをここに記述. 以下は例
NeoBundleLazy 'Shougo/unite.vim', {
\   "autoload" : { "filetypes" : [ "html" ] },
\ }


" NeoBundle初期化の完了
call neobundle#end()

filetype plugin indent on

" 起動時に未インストールプラグインをインストールする
NeoBundleCheck

" ここからはプラグインへの設定を書く.
" これより上ではまだプラグインがロードされていないのでプラグインへの設定は書けない.





set background=light
set incsearch
set number
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:»-,trail:^,eol:↲,extends:»,precedes:«,nbsp:%
set showmatch
set smartcase
set smartindent
set guifont=Osaka-Mono:h14
set ambiwidth=double
set linespace=2

" タブ文字の代わりに半角空白を挿入する
set expandtab

" 行頭から前の位置にカーソルを移動したときに前行の行末に移動する設定
" set whichwrap=b,s,h,l,<,>,[,]
set wrapscan

" http://code.google.com/p/macvim-kaoriya/wiki/readme#vimrc/gvimrc
" ツールバー非表示
set guioptions-=t

" 自動改行の抑止
set tw=0
set formatoptions=q

" 検索時に大文字小文字を区別しない
set ignorecase

"ファイルの上書きの前にバックアップを作る/作らない
"set writebackupを指定してもオプション 'backup' がオンでない限り、
"バックアップは上書きに成功した後に削除される。
set nowritebackup

"バックアップ/スワップファイルを作成する/しない
set nobackup

" 現在行反転
set cursorline

" swpファイルを作らない
set directory=~/.vimswap

noremap : ;
noremap ; :
noremap <C-n> :bn<CR>
noremap <C-p> :bp<CR>
noremap <C-d> :bd<CR>

" 見た目の行で移動する
nnoremap j gj
nnoremap k gk

nnoremap <Space>.  :<C-u>edit $MYVIMRC<CR>

nnoremap <Space>,  :<C-u>source $MYVIMRC<CR> 

nnoremap <Space>t  :NERDTree<CR> 
" nnoremap <Space>t  :call A()<CR>

" カーソル位置の単語のgrep
nnoremap <F4> :grep <cword> ./*

highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
highlight CursorLine gui=underline guifg=NONE guibg=NONE
