#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author  :  anisbsalah
# Github  :  https://github.com/anisbsalah
##################################################################################################################
##################################################################################################################
#
# DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

##################################################################################################################
########################                      D I S T R O  C H E C K                      ########################
##################################################################################################################

#sudo pacman -S --needed git autoconf automake sassc meson inkscape gnome-themes-standard gtk-engine-murrine gnome-shell pkg-config cinnamon gtk3 gtk4 optipng
sudo apt install git inkscape sassc meson gnome-themes-standard gtk2-engines-murrine gnome-shell pkg-config cinnamon libgtk-3-dev optipng

tput setaf 13
echo "####################################################################################################"
echo " Next up figure out the colour accent of your new Arc theme online or with gpick or other software."
echo " Then change the colour for the variable NEWCOLOUR1 in next script, save and run it."
echo "####################################################################################################"
tput sgr0
