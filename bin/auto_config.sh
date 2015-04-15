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
if [ -f ~/.screenrc ]; then
	mv ~/.screenrc /tmp/
fi

cp -r ~/dotfiles/vim ~/.vim
cp ~/dotfiles/vim/vimrc ~/.vimrc
cp ~/dotfiles/bash/bashrc ~/.bashrc
cp ~/dotfiles/bash/aliases ~/.bash_aliases
cp ~/dotfiles/bash/screenrc ~/.screenrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
