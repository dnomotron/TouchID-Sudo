#!/usr/bin/env zsh

# Route output to logfile
exec 1>> /tmp/addtouch.log 2>&1

# Declare auth line once
auth_line='auth       sufficient     pam_tid.so'

# Check if pam_tid.so exists, if not, add it
if ! grep -e "^${auth_line}$" /etc/pam.d/sudo; then
	sudo sed -E -i '.bak' "1s/^(#.*)$/\1\n${auth_line}/" /etc/pam.d/sudo
fi
