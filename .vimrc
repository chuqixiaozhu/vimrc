" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


"设置背景主题
color evening
"显示行号
set number
"tab宽度
set tabstop=4
"统一缩进
set shiftwidth=4
"用空格代替tab
set expandtab
" Be smart when using tabs ;)
set smarttab
"智能缩进
set cindent
set smartindent
"高亮显示匹配的括号
set showmatch
"显示标尺
set ruler
"去掉vi一致性
set nocompatible
"搜索高亮显示
set hlsearch
" When searching try to be smart about cases 
set smartcase
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" highlight current line
set cursorline
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Show matching brackets when text indicator is over them
set showmatch

"总是显示状态行
"set laststatus=2
"自动补全
"":inoremap ( ()<ESC>i
"":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
"":inoremap [ []<ESC>i
"":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i
""function! ClosePair(char)
""  if getline('.')[col('.') - 1] == a:char
""    return "\<Right>"
""  else
""    return a:char
""  endif
""endfunction
""filetype plugin indent on 

"打开文件类型检测, 加了这句才可以用智能补全
"set completeopt=longest,menu,preview

"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
"let g:clang_close_preview=1
" 安装clang, libclang-dev才行
" apt-get install libclang
" apt-get install clang
" git clone https://github.com/Rip-Rip/clang_complete.git

"let g:clang_use_library=1
"let g:clang_library_path='/home/piglet/Downloads/application/clang complete/clang+llvm-3.3-Ubuntu-13.04-x86_64-linux-gnu/lib'
"let g:clang_library_path='/usr/lib/llvm-3.2/lib'

"set nocp
"filetype plugin on