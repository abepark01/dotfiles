HISTORY_FILE='~/.zsh_history'
print "$HISTORY_FILE"
if [ -f $HISTORY_FILE ]; then
  print "delete file"
  rm $HISTORY_FILE
fi

HISTORY_FILE='~/.bash_history'
print "$HISTORY_FILE"
if [ -f $HISTORY_FILE ]; then
  print "delete file"
  rm $HISTORY_FILE
fi
