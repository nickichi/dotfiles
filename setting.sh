
echo `pwd`

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# moromoro
brew install git
brew install zsh
brew install zplug
brew install fzf

# dotfiles
git clone https://github.com/nickichi/dotfiles.git ~/.dotfiles

# zsh
mv ~/.dotfiles/.zshrc ~/.zshrc
zplug install
source ~/.zshrc

# neovim
brew tap neovim/neovim
brew install --HEAD neovim
brew install python
brew install python3
pip2 install --user --upgrade neovim
pip3 install --user --upgrade neovim

# node
brew install nodebrew
mkdir -p ~/.nodebrew/src
nodebrew install-binary latest
brew install yarn --without-node
