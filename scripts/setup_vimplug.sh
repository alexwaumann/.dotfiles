#!/usr/bin/zsh

if (ping -c 1 google.com) &> /dev/null; then
    echo "Downloading most updated version of plug.vim from github .."
    curl -fLo $DOTFILES/nvim/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "Done."
fi

if [ ! -f $HOME/.local/share/nvim/site/autoload/plug.vim ]; then echo "Setting up vim plug neovim"
    mkdir -p $HOME/.local/share/nvim/site/autoload
    ln -sf $DOTFILES/nvim/plug.vim ~/.local/share/nvim/site/autoload/plug.vim
fi

if [ ! -f ~/.vim/autoload/plug.vim ]; then
    echo "Setting up vim plug for vim"
    mkdir -p $HOME/.vim/autoload
    ln -sf $DOTFILES/nvim/plug.vim ~/.vim/autoload/plug.vim
fi
