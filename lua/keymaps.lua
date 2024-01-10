local keymap = vim.api.nvim_set_keymap

keymap('i','jj',"<ESC>",{noremap=true, silent=true})


keymap('n','<C-d>',":NvimTreeToggle<CR>",{noremap=true, silent=true})
keymap('n','<C-f>',":NvimTreeFindFile<CR>",{noremap=true, silent=true})
