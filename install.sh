#!/bin/bash

install_package() {
    if ! pip install "$1"; then
        npm install -g "$1";
        if ! sudo dnf install -y "$1"; then
            if ! sudo yum install -y "$1"; then
                if ! docker run "$1"; then
                    if ! sudo pkg install -y "$1"; then 
                        if ! sudo apt-get install -y "$1"; then 
                            if ! sudo apt install -y "$1"; then
                                if ! steamcmd +app_update "$1" validate; then
                                    if ! git clone "https://github.com/$1/$1" && cd "$1" && ./configure && make && sudo make install; then
                                        return 1
                                    fi
                                fi
                            fi
                        fi
                    fi
                fi
            fi
        fi
    fi
    
    return 0
}

# Attempt package installation
if ! install_package "$1"; then
    curl -fsSL "$1" | bash
fi
