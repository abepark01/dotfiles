DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CURRENT_DIR=$PWD

export GITAWAREPROMPT=$DIR/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
