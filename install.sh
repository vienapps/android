#!/data/data/com.termux/files/usr/bin/bash
apt-get update
apt-get  --assume-yes upgrade 
apt-get  --assume-yes install coreutils gnupg wget 
# Make the sources.list.d directory
[ ! -d $PREFIX/etc/apt/sources.list.d ] && mkdir $PREFIX/etc/apt/sources.list.d
# Write the needed source file
if [ ! -f "$PREFIX/etc/apt/sources.list.d/rendiix.list" ]; then
echo -e "deb https://rendiix.github.io android-tools termux" > $PREFIX/etc/apt/sources.list.d/rendiix.list
wget https://rendiix.github.io/rendiix.gpg
apt-key add rendiix.gpg
apt update
else
echo "repo already installed"
fi