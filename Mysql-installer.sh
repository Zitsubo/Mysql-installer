#!/data/data/com.termux/files/usr/bin/bash

echo "Press Enter to install MySQL"
read

# Update packages and install necessary dependencies
yes | pkg upgrade
pkg install git python -y

# Clone the GitHub repository and run the installer
cd $HOME
git clone "https://github.com/anay-p/mysql-for-termux.git"
cd mysql-for-termux
python installer.py

# Add MySQL to the PATH
source ~/../usr/etc/bash.bashrc