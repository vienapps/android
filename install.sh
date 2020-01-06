#!/data/data/com.termux/files/usr/bin/bash
apt-get update
apt-get  --assume-yes upgrade 
apt-get  --assume-yes install coreutils gnupg wget 
# Make the sources.list.d directory
[ ! -d $PREFIX/etc/apt/sources.list.d ] && mkdir $PREFIX/etc/apt/sources.list.d
# Write the needed source file
if [ ! -f "$PREFIX/etc/apt/sources.list.d/harvien.list" ]; then
echo -e "deb https://harvieno.github.io/android android-tools termux" > $PREFIX/etc/apt/sources.list.d/harvien.list
wget https://harvieno.github.io/android/harvien.gpg
apt-key add harvien.gpg
apt update
else
echo "repo already installed"
fi
