DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIR=$PWD

cd $DIR
git submodule foreach git pull origin master
git submodule update --remote --merge
git submodule update --init --recursive
cd $CURRENT_DIR
