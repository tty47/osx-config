local M = {}

local function bind(op, outer_opts)
  outer_opts = outer_opts or { noremap = true }
  return function(lhs, rhs, opts)
    opts = vim.tbl_extend("force",
      outer_opts,
      opts or {}
    )
    vim.keymap.set(op, lhs, rhs, opts)
  end
end

M.nmap = bind("n", { noremap = false })
M.nnoremap = bind("n")
M.vnoremap = bind("v")
M.xnoremap = bind("x")
M.inoremap = bind("i")

" ------------------------------------------------------------------
" No more Arrow Keys, deal with it
M.noremap <Up> <NOP>
M.noremap <Down> <NOP>
M.noremap <Left> <NOP>
M.noremap <Right> <NOP>

" ------------------------------------------------------------------
" netrw
" nnoremap - :Explore<CR>
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
" autocmd FileType netrw setl bufhidden=delete
"-- netrw END

" ------------------------------------------------------------------
" NERDTree
M.nnoremap <leader>n :NERDTreeFocus<CR>
M.nnoremap <C-n> :NERDTree<CR>
M.nnoremap <C-b> :NERDTreeToggle<CR>
M.nnoremap <C-f> :NERDTreeFind<CR>
" End NERDTree

" ------------------------------------------------------------------
" Tabs
M.nnoremap <C-j> :tabprevious<CR> 
M.nnoremap <C-k> :tabnext<CR>
" End Tabs

" ------------------------------------------------------------------
" Reload Config
M.nnoremap <Leader>r :source $MYVIMRC<CR>

" ------------------------------------------------------------------
" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

M.nnoremap <Leader>+ :vertical resize +5<CR>
M.nnoremap <Leader>- :vertical resize -5<CR>
M.nnoremap <Leader>rp :resize 100<CR>
M.nnoremap <leader>pv :Ex<CR>
M.nnoremap <Leader>cpu a%" PRIu64 "<esc>

return M
