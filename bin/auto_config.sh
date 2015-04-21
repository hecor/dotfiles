if [ -f ~/.vimrc ]; then
	mv ~/.vimrc /tmp
fi
if [ -f ~/.vim ]; then
	mv ~/.vim /tmp
fi
if [ -f ~/.bash_profile ]; then
	mv ~/.bash_profile /tmp/
fi
if [ -f ~/.screenrc ]; then
	mv ~/.screenrc /tmp/
fi

cp -r ~/dotfiles/vim ~/.vim
cp ~/dotfiles/vim/vimrc ~/.vimrc
cp ~/dotfiles/bash/bash_profile ~/.bash_profile
cp ~/dotfiles/bash/screenrc ~/.screenrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
