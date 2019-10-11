

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap { {}<LEFT>
inoremap {<ENter> {}<Left><CR><ESC><S-o>
inoremap ( ()<LEFT>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap <C-o> <ESC>$o

set backspace=indent,eol,start
syntax on
set number
set hlsearch
set ruler
set title
set incsearch
set autoread
set ignorecase
set smartcase
set wrapscan
set matchpairs+=<:>
set shiftwidth=4                                 " 自動インデントの幅
set encoding=utf-8                               " ファイル：vimの文字コード
set t_Co=256                                     " ターミナル：ターミナルで256色表示を使う
"set expandtab                                    " タブを半角スペースに置き換える
set tabstop=4
set cmdheight=1                                  " コマンドラインの高さ
set laststatus=2                                 " ステータスバーを表示する位置
"set list
"set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

" カーソルラインがONの時、行全体をハイライトする
hi CursorLine cterm=underline ctermfg=Black ctermbg=Blue


" カーソルラインがONの時、行番号をハイライトする
hi CursorColumn cterm=underline ctermbg=Blue ctermfg=black

"カーソル移動
set scrolloff=8
set sidescrolloff=16
set sidescroll=1

set wildmenu wildmode=list:longest,full
set clipboard+=unnamed

"画面の移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
