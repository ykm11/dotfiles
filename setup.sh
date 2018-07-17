#!/bin/sh

DOT_FILES=(.zshrc .vimrc)

echo "[+] Pasting symblic Link\n"
for file in ${DOT_FILES[@]}
do
    ln -s ./$file $HOME/$file
done
echo "[+] Done"


echo "[+] Setting for Neovim\n"
if [ -e $HOME/.config/nvim ]; then
    ln -s ./init.vim $HOME/.config/nvim/init.vim
    echo "\nInstall dein.vim -> https://github.com/Shougo/dein.vim\n"

    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.cache/dein

    echo "Install molokai -> https://github.com/tomasr/molokai"
else
    echo "Install Neovim -> https://github.com/neovim/neovim"
fi
echo "[+] Done"
