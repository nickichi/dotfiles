
echo `pwd`

# mkdir if not exists
mkdir -p ~/.vim/rc

# copy files
cp vim/vimrc ~/.vimrc
cp vim/dein.toml ~/.vim/rc/
cp vim/dein_lazy.toml ~/.vim/rc/
