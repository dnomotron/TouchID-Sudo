#!/usr/bin/env bash

grep -e '^auth       sufficient     pam_tid.so$' /etc/pam.d/sudo &> /dev/null
if [ $? -ne 0 ]; then
	sudo sed -E -i '.bak' '1s/^(#.*)$/\1\nauth       sufficient     pam_tid.so/' /etc/pam.d/sudo
fi
