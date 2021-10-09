let mapleader = " "

" Whatever
 noremap <leader>w            <C-w>
vnoremap <silent> <leader>pv  "_dP
vnoremap <silent> <C-j>       :move '>+1<CR>gv=gv
vnoremap <silent> <C-k>       :move '<-2<CR>gv=gv
 noremap <silent> <leader>sh  :FSHere<CR>

" Window stuff
 noremap <silent> <leader>oe  :TroubleToggle<CR>
 noremap <silent> <leader>os  :TagbarToggle<CR>
 noremap <silent> <leader>ou  :UndotreeToggle \| UndotreeFocus<CR>
 noremap <silent> <leader>oq  :cclose<CR>

" FZF
 noremap <silent> <leader>fp  :Files!<CR>
 noremap <silent> <leader>fl  :Lines!<CR>
 noremap <silent> <leader>fb  :Buffers!<CR>
 noremap <silent> <leader>fa  :RG!<CR>

" Directory navigation
 noremap <silent> <leader>dt  :NERDTreeToggle<CR>
 noremap <silent> <leader>df  :NERDTreeFind<CR>
 noremap <silent> <leader>di  :tabedit ~/.config/nvim \| tcd ~/.config/nvim<CR>

" Tab navigation
 noremap <silent> <leader>t1  1gt
 noremap <silent> <leader>t2  2gt
 noremap <silent> <leader>t3  3gt
 noremap <silent> <leader>t4  4gt
 noremap <silent> <leader>t5  5gt
 noremap <silent> <leader>t6  6gt
 noremap <silent> <leader>t7  7gt
 noremap <silent> <leader>t8  8gt
 noremap <silent> <leader>t9  9gt
 noremap <silent> <leader>t0  :tablast<CR>
 noremap <silent> <leader>tn  :tabnew<CR>
 noremap <silent> <leader>ts  :tab split<CR>
 noremap <silent> <leader>tq  :tabclose<CR>
 noremap <silent> <C-l>       :tabnext<CR>
 noremap <silent> <C-h>       :tabprevious<CR>

" Easymotion
     map <silent> <leader>ef  <Plug>(easymotion-bd-f)
     map <silent> <leader>et  <Plug>(easymotion-bd-t)
     map <silent> <leader>ew  <Plug>(easymotion-bd-w)
     map <silent> <leader>eW  <Plug>(easymotion-bd-W)
     map <silent> <leader>ee  <Plug>(easymotion-bd-e)
     map <silent> <leader>eE  <Plug>(easymotion-bd-E)
     map <silent> <leader>ej  <Plug>(easymotion-bd-jk)
     map <silent> <leader>e;  <Plug>(easymotion-bd-n)
     map <silent> <leader>ea  <Plug>(easymotion-jumptoanywhere)
     map <silent> <leader>er  <Plug>(easymotion-repeat)
     map <silent> <leader>en  <Plug>(easymotion-next)
     map <silent> <leader>eN  <Plug>(easymotion-prev)

" Incsearch
     map <silent> /           <Plug>(incsearch-forward)
     map <silent> ?           <Plug>(incsearch-backward)
     map <silent> g/          <Plug>(incsearch-stay)
     map <silent> n           <Plug>(incsearch-nohl-n)
     map <silent> N           <Plug>(incsearch-nohl-N)
     map <silent> *           <Plug>(incsearch-nohl-*)
     map <silent> #           <Plug>(incsearch-nohl-#)
     map <silent> g*          <Plug>(incsearch-nohl-g*)
     map <silent> g#          <Plug>(incsearch-nohl-g#)

" LSP config
inoremap <silent><expr> <C-Space>  compe#complete()
inoremap <silent><expr> <CR>       compe#confirm('<CR>')
inoremap <silent><expr> <C-e>      compe#close('<C-e>')
inoremap <silent><expr> <C-f>      compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>      compe#scroll({ 'delta': -4 })
nnoremap <silent> <leader>ld       <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>lD       <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <leader>lr       <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>li       <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>lh       <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>ln       <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>la       <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <leader>ls       <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n>            <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <C-p>            <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
