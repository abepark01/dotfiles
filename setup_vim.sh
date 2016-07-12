DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIR=$PWD

if [ ! -L $HOME/.vimrc ]
then
  ln -s $DIR/vimrc $HOME/.vimrc
fi

mkdir -p $HOME/.vim/autoload $HOME/.vim/colors
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

source $DIR/update_vim_bundles.sh
cp -r $DIR/bundle/vim-tomorrow-theme/colors $HOME/.vim

if [ ! -L $HOME/.vim/bundle ]
then
  ln -s $DIR/bundle $HOME/.vim/bundle
fi

cd $CURRENT_DIR
