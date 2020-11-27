# vim-zpl-syntax

Basic syntax highlight for Zebra Programming Language on Vim.

### Installation

Put the following line in `$HOME/.vim/filetype.vim`  for **Vim** or `$HOME/.config/nvim/filetype.vim` for **Neovim**:

    augroup filetypedetect
        au! BufRead,BufNewFile *.zpl        setfiletype=zpl
    augroup END

Put the `zpl.vim` file in `$HOME/.vim/syntax/` for **Vim**, or `$HOME/.config/nvim/syntax/` for **Neovim**.
