#!/bin/sh
release_version=`cat /etc/os-release | grep "^ID=" | awk -F "=" '{print $2}'`
echo "release version:$release_version"
cp ./basic/.vimrc ~/.vimrc
if [[ $release_version == "\"openEuler\"" ]];
then
    dnf -y install vim
elif [[ $release_version == "ubuntu" ]];
then
    apt -y install vim
fi
