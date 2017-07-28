#!/bin/bash

USERNAME="admin"
PASSWORD="admin"
TFTP="10.10.10.10"

# DO NOT CHANGE BELOW THIS LINE

# http://stackoverflow.com/a/246128
HOME=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

LOG="$HOME"/$(basename "$0").log

while read -r s; do
  [[ "$s" =~ ^#.*$ ]] && continue
  {
    date
    "$HOME"/upload-cfg.exp "${s//[$'\t\r\n ']}" $USERNAME $PASSWORD $TFTP
    echo --------------------------------------------------------------------------------
  } >> "$LOG"
done < "$HOME"/switches
