# Universal-Install-Script
Inspired by [XKCD](https://xkcd.com/1654/), this Bash script installs anything by testing different sources. (not tested, why would I?)


## Runs
In decreasing order,
* pip
* npm
* yum & dnf
* docker
* pkg
* apt-get & dpkg
* steamcmd
* git clone; ./configure; make; make install
* curl | bash 

## To use
To use, add execute privilage to this script, then run `./install.sh [package name]`
