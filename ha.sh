#!/bin/bash

##### Check root
if [[ ${EUID} -eq 0 ]]; then
  echo "Is root."
else
  echo "Not root, this script must be run as root"
  exit 1
fi

##### Copy themes to manully config
cp -n *.theme /usr/share/xfce4/terminal/colorschemes/

exit 0
