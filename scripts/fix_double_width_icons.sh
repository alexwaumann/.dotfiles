#!/usr/bin/zsh

if [ ! -f /usr/lib/libwcwidth-icons.so ]; then
    echo "Downloading wcwidth-icons for double-width icon support.."
    dir="$PWD"
    mkdir ~/temp_for_install
    cd ~/temp_for_install
    git clone https://github.com/powerman/wcwidth-icons && cd wcwidth-icons
    echo "Installing wcwidth-icons for double-width icon support.."
    sudo make install
    cd $dir
    rm -rf ~/temp_for_install
    echo "Done."
    echo "Make sure to: export LD_PRELOAD=/usr/lib/libwcwidth-icons.so"
fi
