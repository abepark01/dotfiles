ln -s $PWD/vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/autoload $HOME/.vim/colors
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

source ./update_vim_bundles.sh
ln -s $PWD/bundle $HOME/.vim/bundle
cp -r $PWD/bundle/vim-tomorrow-theme/colors $HOME/.vim



