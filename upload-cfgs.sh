#!/bin/bash

USERNAME=admin
PASSWORD=admin
TFTP=10.10.10.10

# DO NOT CHANGE BELOW THIS LINE

# http://stackoverflow.com/a/246128
HOME=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

LOG=$HOME/`basename $0`.log

while read s; do
  [[ "$s" =~ ^#.*$ ]] && continue
  date >> $LOG
  $HOME/upload-cfg.exp $s $USERNAME $PASSWORD $TFTP >> $LOG
  echo -------------------------------------------------------------------------------- >> $LOG
done < $HOME/switches
