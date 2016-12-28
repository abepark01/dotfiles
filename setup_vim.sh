DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIR=$PWD
VIM_DIR=$DIR/vim
BUNDLE_DIR=$VIM_DIR/bundle

if [ ! -e $HOME/.vimrc ]
then
  ln -s $DIR/vimrc $HOME/.vimrc
fi

mkdir -p $HOME/.vim/autoload
mkdir -p $HOME/.vim/bundle
mkdir -p $HOME/.vim/colors

if [ ! -e $HOME/.vimrc.bundles ]
then
  ln -s $DIR/vimrc.bundles $HOME/.vimrc.bundles
fi

if [ ! -e $HOME/.vim/ftplugin ]
then
  ln -s $DIR/vim/ftplugin $HOME/.vim/ftplugin
fi

if [ ! -e $HOME/.gemrc ]
then
  ln -s $DIR/gemrc $HOME/.gemrc
fi

if [ ! -e $HOME/.tern-project ]
then
  ln -s $DIR/tern-project $HOME/.tern-project
fi
