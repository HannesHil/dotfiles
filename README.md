Installs the dotfiles into the home directory:
```
git clone https://git.hsht.de:443/HannesHil/dotfiles.git
cd dotfiles
rm README.md
cp -r . ../
cd ..
mv .git .dotfiles
rm -rf dotfiles```
