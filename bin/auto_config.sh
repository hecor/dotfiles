if [ -f ~/.vimrc ]; then
	mv ~/.vimrc /tmp
fi
if [ -f ~/.vim ]; then
	mv ~/.vim /tmp
fi
if [ -f ~/.bash_profile ]; then
	mv ~/.bash_profile /tmp/
fi
if [ -f ~/.bash_aliases ]; then
	mv ~/.bash_aliases /tmp/
fi
if [ -f ~/.screenrc ]; then
	mv ~/.screenrc /tmp/
fi
if [ -f ~/.zshrc ]; then
	mv ~/.zshrc /tmp/
fi

cp -r ~/dotfiles/vim ~/.vim
cp ~/dotfiles/vim/vimrc ~/.vimrc
cp ~/dotfiles/bash/bash_profile ~/.bash_profile
cp ~/dotfiles/bash/bash_aliases ~/.bash_aliases
cp ~/dotfiles/bash/screenrc ~/.screenrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#cp ~/dotfiles/bash/zshrc ~/.zshrc

