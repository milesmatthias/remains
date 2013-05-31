#! /bin/sh

# Miles Matthias

files=('/etc/bashrc' '/usr/share/vim/vimrc' '/Users/milesmatthias/.gitconfig')
dirs=('/Users/milesmatthias/Projects' '/Users/milesmatthias/Movies/WeddingDVD' '/Users/milesmatthias/Pictures/iPhoto Library' '/Users/milesmatthias/Library/Application Support/Sublime Text 2')

rm -rf ~/remains_tmp
mkdir ~/remains_tmp
cd ~/remains_tmp

echo "Copying dirs:"

for i in "${dirs[@]}"
do
    echo $i
    cp -r "$i" .
done

mkdir files
cd files

echo "Copying files:"

for j in "${files[@]}"
do
    echo "$j"
    cp "$j" .
done

cd ..

tar -czvf ~/Desktop/remains.tar.gz .
