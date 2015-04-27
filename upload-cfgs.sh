#!/bin/bash

USERNAME=admin
PASSWORD=admin
TFTP=10.10.10.10

# DO NOT CHANGE BELOW THIS LINE

# http://stackoverflow.com/a/246128
HOME=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

while read s; do
  [[ "$s" =~ ^#.*$ ]] && continue
  $HOME/upload-cfg.exp $s $USERNAME $PASSWORD $TFTP
done < $HOME/switches
