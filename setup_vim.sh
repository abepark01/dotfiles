DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIR=$PWD

if [ ! -L $HOME/.vimrc ]
then
  ln -s $DIR/vimrc $HOME/.vimrc
fi

if [ ! -L $HOME/.vimrc.local ]
then
  ln -s $DIR/vimrc.local $HOME/.vimrc.local
fi

mkdir -p $HOME/.vim/autoload $HOME/.vim/colors
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

source $DIR/update_vim_bundles.sh
cp -r $DIR/bundle/vim-tomorrow-theme/colors $HOME/.vim

if [ ! -L $HOME/.vim/bundle ]
then
  ln -s $DIR/bundle $HOME/.vim/bundle
fi

if [ ! -L $HOME/.vim/ftplugin ]
then
  ln -s $DIR/vim/ftplugin $HOME/.vim/ftplugin
fi

cd $CURRENT_DIR
