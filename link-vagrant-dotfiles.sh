#!/bin/bash

PROJ_NAME="vagrant_dotfiles"

echo "Starting script to link vagrant dotfiles"
cd ~
ln -s $PROJ_NAME/bash_aliases .bash_aliases
rm .irbrc
ln -s $PROJ_NAME/irbrc .irbrc
ln -s $PROJ_NAME/pryrc .pryrc
rm .profile
ln -s $PROJ_NAME/profile .profile
echo "Finished linking the dotfiles"
