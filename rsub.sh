#!/bin/bash

# Installs remote sublime for remote file editing in sublime text.

# Run on remote machine
sudo wget -O /usr/local/bin/rsub https://raw.github.com/aurora/rmate/master/rmate
sudo chmod +x /usr/local/bin/rsub
echo alias subl=rsub >> ~/.bash_aliases

# Logout, open Sublime (w/rsub installed) on local machine
# Log back in with:
# ssh -R 52698:localhost:52698 user@ip