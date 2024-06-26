#! /bin/bash

set -o errexit

#################################################################

rm -rf ~/.tmux/plugins/tpm

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

mkdir -p ~/.config/tmux

touch ~/.config/tmux/tmux.conf

echo "set -g @plugin 'tmux-plugins/tpm'" >> ~/.config/tmux/tmux.conf

echo "set -g @plugin 'tmux-plugins/tmux-sensible'" >> ~/.config/tmux/tmux.conf

echo "run -b '~/.tmux/plugins/tpm/tpm'" >> ~/.config/tmux/tmux.conf
