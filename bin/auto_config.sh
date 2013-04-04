if [ -f ~/.vimrc ]; then
	mv ~/.vimrc /tmp
fi
if [ -f ~/.vim ]; then
	mv ~/.vim /tmp
fi
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc /tmp/
fi
if [ -f ~/.bash_aliases ]; then
	mv ~/.bash_aliases /tmp/
fi
if [ -f ~/.bin ]; then
	mv ~/.bin /tmp/
fi
if [ -f ~/.screenrc ]; then
	mv ~/.screenrc /tmp/
fi

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/bash/bashrc ~/.bashrc
ln -s ~/dotfiles/bash/aliases ~/.bash_aliases
ln -s ~/dotfiles/bin ~/.bin
ln -s ~/dotfiles/bash/screenrc ~/.screenrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
