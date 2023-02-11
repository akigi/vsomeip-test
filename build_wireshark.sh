#!/bin/sh
# This shell script is made by SyneArt <sa@syneart.com>
#######################################
# BUILD WIRESHARK ON UBUNTU OR DEBIAN #
#######################################

# |          THIS SCRIPT IS TESTED CORRECTLY ON          |
# |------------------------------------------------------|
# | OS             | Wireshark      | Test | Last test   |
# |----------------|----------------|------|-------------|
# | Ubuntu 22.04.1 | Commit:2fcc819 | OK   | 06 Dec 2022 |
# | Ubuntu 18.04.1 | Commit:e03a590 | OK   | 07 Feb 2021 |
# | Ubuntu 20.04.1 | Commit:a3b2afa | OK   | 05 Nov 2020 |
# | Ubuntu 18.04.1 | Commit:8beab04 | OK   | 20 Nov 2018 |
# | Ubuntu 16.04.5 | Commit:8beab04 | OK   | 20 Nov 2018 |
# | Ubuntu 14.04.5 | Commit:8beab04 | OK   | 20 Nov 2018 |
# | Debian 9.6     | Commit:8beab04 | OK   | 20 Nov 2018 |

# 1. KEEP UBUNTU OR DEBIAN 's apt-cache UP TO DATE
sudo apt-get update

export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/$(curl http://ip-api.com/line?fields=timezone) /etc/localtime
sudo apt-get install -y tzdata

# 2. INSTALL THE DEPENDENCIES
sudo apt-get install -y build-essential git cmake 

# CMAKE3
sudo apt-get install -y cmake3

# GUI
sudo apt-get install -y qttools5-dev qttools5-dev-tools libqt5svg5-dev qtmultimedia5-dev
sudo apt-get install -y qt6-base-dev qt6-multimedia-dev qt6-tools-dev qt6-tools-dev-tools qt6-l10n-tools libqt6core5compat6-dev

# PCAP
sudo apt-get install -y libpcap-dev

# Dev file (On Ubuntu 20.04)
sudo apt-get install -y libc-ares-dev

# CRYPT
sudo apt-get install -y libgcrypt20-dev

# GLIB2
sudo apt-get install -y libglib2.0-dev

# LEX & YACC
sudo apt-get install -y flex bison

# PCRE2 (On Ubuntu 18.04)
sudo apt-get install -y libpcre2-dev

# HTTP/2 protocol (Ubuntu >= 16.04)
sudo apt-get install -y libnghttp2-dev

# 3. BUILD THE WIRESHARK
git clone https://github.com/wireshark/wireshark ~/wireshark
cd ~/wireshark
mkdir build
cd build
cmake ../
make -j`nproc` && {
  echo "\nBuild Success!"
  echo "You can execute the Wireshark by command \"sudo ./wireshark\""
  echo "at \"`pwd`/run\""
}