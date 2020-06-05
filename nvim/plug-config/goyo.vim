" nmap <silent> <leader>z :Goyo<CR>
function! s:goyo_enter()
  set wrap
  set linebreak
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
" autocmd! User GoyoLeave nested call <SID>goyo_leave()
