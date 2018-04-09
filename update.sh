#!/bin/bash

# Author: Berna93 
# Github: https://github.com/Berna93
# Shell script developed for update and maintenance of Ubuntu-based distros via APT 
# Inspired on a script made by @bocharsky-bw (https://gist.github.com/bocharsky-bw/fc692baacc07f0e430d5) 
# For further information on commands, see Linux Die (https://linux.die.net/man/)

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

echo -e $TEXT_YELLOW
echo 'Starting system update...'
echo -e $TEXT_RESET
sudo apt-get update
echo -e $TEXT_YELLOW
echo 'Update done succesfully!'
echo -e $TEXT_RESET

echo -e $TEXT_YELLOW
echo 'Starting distro upgrade...'
echo -e $TEXT_RESET
sudo apt-get dist-upgrade
echo -e $TEXT_YELLOW
echo 'Distro upgrade done succesfully!'
echo -e $TEXT_RESET


echo -e $TEXT_YELLOW
echo 'Starting system upgrade...'
echo -e $TEXT_RESET
sudo apt-get upgrade
echo -e $TEXT_YELLOW
echo 'Upgrade done succesfully! '
echo -e $TEXT_RESET

echo -e $TEXT_YELLOW
echo 'Removing unnecessary  packages (autoremove)...'
echo -e $TEXT_RESET
sudo apt-get autoremove
echo -e $TEXT_YELLOW
echo 'Unnecessary packages succesfully removed!!'
echo -e $TEXT_RESET

echo -e $TEXT_YELLOW
echo 'Removing useless .deb packages (autoclean)...'
echo -e $TEXT_RESET
sudo apt-get autoclean
echo -e $TEXT_YELLOW
echo 'Useless deb. packages successfully removed!'
echo -e $TEXT_RESET

echo -e $TEXT_YELLOW
echo 'Removing unused  .deb packages (clean)...'
echo -e $TEXT_RESET
sudo apt-get clean
echo -e $TEXT_YELLOW
echo 'Unused .deb packages succesfully removed!'
echo -e $TEXT_RESET

if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
fi