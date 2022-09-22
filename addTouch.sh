#!/usr/bin/env zsh

exec 1> /tmp/addtouch.log 2>&1

if ! grep -e '^auth       sufficient     pam_tid.so$' /etc/pam.d/sudo; then
	sudo sed -E -i '.bak' '1s/^(#.*)$/\1\nauth       sufficient     pam_tid.so/' /etc/pam.d/sudo
fi
