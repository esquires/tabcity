"easy movement between tabs (yes gt and <c-page> work, but this seems easier)
nnoremap <c-l> gt
nnoremap <c-h> gT

nnoremap <leader>t :tabnew 

"tag follows to new tab (and returns)
nnoremap <C-]> :call tags#Open_tag_in_new_tab()<cr>
nnoremap <leader>r :call pos#Return_to_orig_pos()<cr>
nnoremap <leader>R :call pos#Clear_tag_stack()<cr>

"tabbing
nnoremap <A-h> :call Move_tab(1)<cr>
nnoremap <A-l> :call Move_tab(0)<cr>

function! Move_tab(left)

    let tbnr = tabpagenr()

    if a:left
        if tbnr == 1
            tabm
        else
            tabm -1
        endif
    else
        tabm +1
        if tbnr == tabpagenr()
            tabm 0
        endif
    endif

endfunction
