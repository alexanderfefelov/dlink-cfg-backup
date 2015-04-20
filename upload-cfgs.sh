#!/bin/bash

USERNAME=admin
PASSWORD=admin
TFTP=10.10.10.10

# DO NOT CHANGE BELOW THIS LINE

while read s; do
  [[ "$s" =~ ^#.*$ ]] && continue
  ./upload-cfg.exp $s $USERNAME $PASSWORD $TFTP
done < switches
