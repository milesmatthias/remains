#! /bin/sh

# Miles Matthias

files=('/etc/bashrc' '/usr/share/vim/vimrc' '~/.gitconfig')
dirs=('~/Projects' '~/Library/Application\ Support/Sublime\ Text\ 2')
#dirs=('~/Projects' '~/Movies/WeddingDVD' '~/Pictures/iPhoto\ Library' '~/Library/Application\ Support/Sublime\ Text\ 2')

mkdir ~/remains_tmp
cd ~/remains_tmp

for i in "${dirs[@]}"
do
    cp -r $i .
done

mkdir files
cd files

for j in "${files[@]}"
do
    cp $j .
done

cd ..

tar -czvf ~/Desktop/remains.tar.gz .
