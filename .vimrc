" Set indentation and tab settings
set tabstop=4       " Number of spaces a tab is displayed as
set shiftwidth=4    " Number of spaces to use for auto-indenting
set expandtab       " Use spaces instead of tabs

" Show line numbers
set number

" Enable syntax highlighting
syntax enable

" Set colorscheme (replace 'desert' with your preferred colorscheme)

" Set the leader key to comma
let mapleader = ' '


" Additional customizations can be added here...
" Set the leader key to comma

" Save the current file
nnoremap <leader>w :w<CR>

" Quit Vim
nnoremap <leader>qq :q!<CR>

" Open explore
nnoremap <leader>e :Ex<CR>

" Toggle relative line numbers
nnoremap <leader>ln :set relativenumber!<CR>

" Search and replace using the word under the cursor
nnoremap <leader>s :%s/\<<C-r>=expand("<cword>")<CR>\>//gI<Left><Left>

" Buffer navigation
nnoremap <leader>bn :bn<CR>   " Go to the next buffer
nnoremap <leader>bp :bp<CR>   " Go to the previous buffer
nnoremap <leader>bd :bd<CR>   " Close the current buffer

" Toggle spell check
nnoremap <leader>sp :setlocal spell! spelllang=en_us<CR>

" Execute a custom command
nnoremap <leader>mycommand :echo "Hello, Vim!"<CR>

" Open command-line to execute shell commands
nnoremap <leader>sh :!

" Format the entire file
nnoremap <leader>fmt :%s/\s\+$//e<CR>gg=G<C-l>

" Toggle paste mode (useful for pasting code)
nnoremap <leader>pp :set paste!<CR>


"plugins keywords


" Comment/uncomment selected lines (requires 'tpope/vim-commentary' plugin)
nnoremap <leader>c :Commentary<CR>

" Toggle NERDTree file explorer (requires 'scrooloose/nerdtree' plugin)
nnoremap <leader>e :Ex<CR>

" Fuzzy file finder with fzf (requires 'junegunn/fzf.vim' plugin)
nnoremap <leader>ff :Files<CR>

" Key mapping to switch to the next tab
nnoremap <leader>N :tabnext<CR>

" Key mapping to switch to the previous tab
nnoremap <leader>P :tabprevious<CR>

" tab close
nnoremap <leader>C :tabclose<CR>

" Run current script (for Python, Ruby, etc.)
nnoremap <leader>run :w<CR>:!%<CR>

" Open a new tab
nnoremap <leader>t :tabnew<CR>

" Open a new split
nnoremap <leader>v :vsplit<CR>

" Reload .vimrc file
nnoremap <leader>rv :source ~/.vimrc<CR>

" Highlight search results as you type
set incsearch

" Additional custom mappings

" Toggle line wrap
nnoremap <leader>tw :set wrap!<CR>

" Toggle list (show invisible characters like tabs, spaces)
nnoremap <leader>tl :set list!<CR>

" Indent current block of code (requires 'tpope/vim-surround' plugin)
nnoremap <leader>si V>}=

" Toggle paste mode (alternative mapping)
nnoremap <leader>pa :set paste!<CR>

" Open the quickfix list
"nnoremap <leader>qo :copen<CR>

" Close the quickfix list
"nnoremap <leader>qc :cclose<CR>

" Toggle line numbers
nnoremap <leader>ln :set number!<CR>

" Toggle syntax highlighting
nnoremap <leader>sh :syntax enable<CR>

" Navigate to previous/next error in quickfix list
nnoremap <leader>pe :cprev<CR>
nnoremap <leader>ne :cnext<CR>

" Toggle search highlight (clear search highlighting)
nnoremap <leader>nh :nohlsearch<CR>
" undo tree
nnoremap <leader>rr :GundoToggle<CR>


" Automatically reload .vimrc when saved
"autocmd BufWritePost .vimrc source %

" Colorscheme



" Plugins


" Vim-Plug Configuration
call plug#begin('~/.vim/plugged')

" Specify plugins here
" Example plugins:
 Plug 'tpope/vim-commentary'       " Comment/uncomment code
 Plug 'junegunn/fzf.vim'           " Fuzzy file finder
 Plug 'sjl/gundo.vim'              " undo tree
 Plug 'nvim-telescope/telescope.nvim'
" Add other plugins here...

call plug#end()

