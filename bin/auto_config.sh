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
if [ -f ~/bin ]; then
	mv ~/bin /tmp/
fi

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/bash/bashrc ~/.bashrc
ln -s ~/dotfiles/bash/aliases ~/.bash_aliases
ln -s ~/dotfiles/bin ~/bin

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
