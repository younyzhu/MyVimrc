"-------------------------------------------------------------------
"
" -- VIM 配置文件 .vimrc
"
"     作者: Youny  （其实就是这里抄一点，那里抄一点，文档里学一点）
"
"     最后修改时间：2013-12-2
"
"-------------------------------------------------------------------

set shortmess=atI 		 " 启动的时候不显示那个援助乌干达儿童的信息
set autoread 			 " 正在编辑文件被其他程序改动时自动重新加载
syntax on  	         	 	 " 使用语法高亮
filetype plugin indent on 	 " 打开文件类型检测
set nocompatible 		 	 " 使用不兼容 vi 的模式（vi模式一些操作很不方便）
set autoindent       		 "设置自动对齐(缩进)：即每行的缩进值与上一行相等；noautoindent 取消设置
set smartindent        		 " 智能对齐方式
set hlsearch
set incsearch
set ignorecase
set showmatch
set wrap 			 	 " 自动换行
set linebreak 			 " 整词换行
"set tabstop=4 			 " 设置制表符(tab键)的宽度
"set softtabstop=4     	 	 " 设置软制表符的宽度    
"set shiftwidth=4       	 	 " (自动) 缩进使用的4个空格
set cindent              	 " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     " 设置C/C++语言的具体缩进方式
set backspace=2          	 " 设置退格键可用
set mouse=a              	 " 使用鼠标
set number              	 	 " 显示行号
set cul				 " 显示当前行下划线
colorscheme ron			 " 设置配色方案

" powerline 配置
set laststatus=2   	" Always show the statusline
set encoding=utf-8 	" Necessary to show Unicode glyphs
set t_Co=256 		" Explicitly tell Vim that the terminal supports 256 colors
set guifont=PowerlineSymbols\ for\ Powerline 
let g:Powerline_symbols = 'unicode'
let g:indentLine_color_term=239
let g:indentLine_char='¦'

" 设置MiniBufferExplorer
let g:miniBufExplMapWindowNavVim=1 		" 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows=1 	" 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs=1 	" Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口
let g:miniBufExplModSelTarget=1    		" 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer

" ctags 相关设置
set tags=tags					" vim 启动时自动载入以下tags文件
set tags+=./tags
set tags+=/usr/tags
set tags+=/usr/include/c++/4.8.2/tags
set tags+=/usr/include/tags
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=c++<CR><CR> " 按下F5，在当前目录递归生成tag文件
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=c++<CR><CR>

" 设置分屏浏览
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" 设置WinManager :WMToggle (nomal模式的命令)
let g:winManagerWindowLayout='TagList|FileExplorer'
"nmap wm :WMToggle<CR>
map <F4> :WMToggle<CR>

" 符号配对
"function ClosePair(char)
"	if getline('.')[col('.') - 1] == a:char
"		return "\<Right>"
"	elseif (a:char == "\'" || a:char == "\"")
"		return a:char.a:char."\<left>"
"	else
"		return a:char
"	endif
"endf

" 设置超级TAB的补全
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-U>"

" 自动补全列表的颜色设置
highlight Pmenu ctermfg=black 
highlight PmenuSel ctermfg=white ctermbg=black

" clang_complete 自动补全插件设置
set completeopt=longest,menu            " 关掉智能补全时的预览窗口
let g:clang_complete_copen=0
let g:clang_auto_select=1
let g:clang_complete_auto=1
let g:clang_complete_macros=1
let g:clang_use_library=1

" 显示历史打开文件
map <F3> :MRU<CR>
imap <F3> <ESC>:MRU<CR>

" 系统剪贴板映射 
set clipboard=unnamedplus
map <C-y> "+y
map <C-p> "+p

" QuickFix 插件的设置
" 按下F6，执行make编译程序，并打开quickfix窗口，显示编译信息
map <F6> :make<CR><CR><CR> :copen<CR><CR>
" 按下F7，光标移到上一个错误所在的行
map <F7> :cp<CR>
" 按下F8，光标移到下一个错误所在的行
map <F8> :cn<CR>
" 按下F9，执行make clean
map <F9> :make clean<CR><CR><CR>
" 以下的映射是使上面的快捷键在插入模式下也能用
imap <F6> <ESC>:make clean<CR><CR><CR>
imap <F7> <ESC>:make<CR><CR><CR> :copen<CR><CR>
imap <F8> <ESC>:cp<CR>
imap <F9> <ESC>:cn<CR>

" 按下F10，在当前代码的 .c / .h 之间切换
nnoremap <silent> <F10> :A<CR>

