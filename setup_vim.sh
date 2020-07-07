DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIR=$PWD
VIM_DIR=$DIR/vim
BUNDLE_DIR=$VIM_DIR/bundle

if [ ! -e $HOME/.vimrc ]
then
  ln -s $DIR/vimrc $HOME/.vimrc
fi

if [ ! -e $HOME/.agignore ]
then
  ln -s $DIR/agignore $HOME/.agignore
fi
if [ ! -e $HOME/.ackrc ]
then
  ln -s $DIR/ackrc $HOME/.ackrc
fi


if [ ! -e $HOME/.vim/autoload ]
then
  mkdir -p $HOME/.vim/autoload
fi

if [ ! -e $HOME/.vim/bundle ]
then
  mkdir -p $HOME/.vim/bundle
fi

if [ ! -e $HOME/.vim/colors ]
then
  mkdir -p $HOME/.vim/colors
fi

if [ ! -e $HOME/.vim/after ]
then
  mkdir -p $HOME/.vim/after
fi

if [ ! -e $HOME/.vimrc.bundles ]
then
  ln -s $DIR/vimrc.bundles $HOME/.vimrc.bundles
fi

if [ ! -e $HOME/.vim/after/ftplugin ]
then
  ln -s $DIR/vim/ftplugin $HOME/.vim/after/ftplugin
fi

if [ ! -e $HOME/.gemrc ]
then
  ln -s $DIR/gemrc $HOME/.gemrc
fi

if [ ! -e $HOME/.tern-config ]
then
  ln -s $DIR/tern-config $HOME/.tern-config
fi

if [ ! -e $HOME/.editorconfig ]
then
  ln -s $DIR/editorconfig $HOME/.editorconfig
fi

if [ ! -e $HOME/.coc.vimrc ]
then
  ln -s $DIR/coc.vimrc $HOME/.coc.vimrc
fi

if [ ! -e $HOME/.vimrc.bundles.local ]
then
  cp ./vimrc.bundles.local $HOME/.vimrc.bundles.local
fi

if [ ! -e $HOME/.vimrc.local ]
then
  cp ./vimrc.local $HOME/.vimrc.local
fi


if [ ! -e $HOME/.gitconfig ]
then
  ln -s $DIR/gitconfig $HOME/.gitconfig
fi

./setup_plug.vim.sh
./setup_base16_bashrc.sh
