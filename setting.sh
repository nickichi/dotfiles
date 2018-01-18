
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
