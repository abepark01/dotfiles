CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"
$CURRENT_DIR/vim/bundle/YouCompleteMe/install.py --tern-completer --gocode-completer --clang-completer --racer-completer
