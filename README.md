The bestest dotfiles ever.

1. Clone this repo:

     ```
     $ git clone https://github.com/cdgagne/dotfiles.git ~/dotfiles
     ```
     
1. Link to the vimrc:

     ```
     $ cd ~ && ln -s dotfiles/vimrc .vimrc
     ```

1. Install Powerline fonts for Liberation Mono for Powerline:

     ```
     $ git clone https://github.com/powerline/fonts
     $ (cd fonts && ./install.sh)
     ```

1. Install Vundle:

     ```
     $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     ```
     
1. Go.
     
1. Run :BundleInstall in vim
