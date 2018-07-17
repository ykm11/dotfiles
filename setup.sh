#!/bin/sh

DOT_FILES=(.zshrc .vimrc)

for file in ${DOT_FILES[@]}
do
    ln -s ./$file $HOME/$file
done

if [ -e $HOME/.config/nvim ]; then
    ln -s ./init.vim $HOME/.config/nvim/init.vim
    echo "\nINSTALL dein.vim -> https://github.com/Shougo/dein.vim\n"

    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.cache/dein

    echo "INSTALL molokai -> https://github.com/tomasr/molokai"
else
    echo "NAI"
    # Install Neovim
fi
