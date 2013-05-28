syntax on
filetype indent plugin on

set ruler 
set showcmd 


"显示行号：
"set number
""为方便复制，用<F2>开启/关闭行号显示:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

set modeline

set background=dark
set nobackup
set noswapfile
set nu

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt+=longest
 
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
 
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"上下左右键的行为
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" 自动补全
let g:acp_completeoptPreview = 1



" for python
filetype off
call pathogen#incubate()
call pathogen#helptags()

