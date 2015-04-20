#!/bin/bash

while read s; do
  [[ "$s" =~ ^#.*$ ]] && continue
  ./upload-cfg.exp $s admin admin 10.10.10.10
done < switches
