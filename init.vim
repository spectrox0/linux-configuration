set number 
set clipboard+=unnamedplus
set mouse=a
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'honza/vim-snippets'
    Plug 'posva/vim-vue'
	Plug 'ryanoasis/vim-devicons'
	Plug 'jiangmiao/auto-pairs'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'sheerun/vim-polyglot'
	Plug 'ap/vim-css-color'
	Plug 'dracula/vim'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf' , {'do' : {-> fzf#install()}}
	Plug 'neoclide/coc.nvim'
	Plug 'alvan/vim-closetag'
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'Shougo/echodoc.vim'

call plug#end()
set tabstop=4
set shiftwidth=4
noremap <C-i> :<C-U>tabnext<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> f :Rg<CR>
nmap <C-s> :CocCommand prettier.formatFile <CR> :write <CR>
noremap <C-u> :<C-U>tabprevious<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
colorscheme dracula
set noshowmode 
set nobackup
set nowritebackup
set updatetime=300
set splitbelow 
set splitright
set hidden
set modifiable
set termguicolors


highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
					\ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
