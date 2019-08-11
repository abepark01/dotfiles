HISTORY_FILE='~/.zsh_history'
if [ -f $HISTORY_FILE ]; then
  rm $HISTORY_FILE
fi

HISTORY_FILE='~/.bash_history'
if [ -f $HISTORY_FILE ]; then
  rm $HISTORY_FILE
fi

HISTORY_FILE='~/.pry_history'
if [ -f $HISTORY_FILE ]; then
  rm $HISTORY_FILE
fi

HISTORY_FILE='~/.psql_history'
if [ -f $HISTORY_FILE ]; then
  rm $HISTORY_FILE
fi


