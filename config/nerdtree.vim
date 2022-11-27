
"Nerdtree keys
" enable line numbers
let NERDTreeShowLineNumbers=1
" open file in a new tab https://github.com/preservim/nerdtree/issues/1058
let g:NERDTreeCustomOpenArgs = {'file':{'where':'t'}}
"let NERDTreeMapOpenInTab='<ENTER>'
" make sure relative line numbers are used
"autocmd FileType nerdtree setlocal relativenumber
nnoremap <C-t> :NERDTreeToggle<CR>
