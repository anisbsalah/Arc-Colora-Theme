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

tput setaf 3
echo "Downloading the latest arc-theme from github"
tput sgr0

git clone https://github.com/jnsh/arc-theme --depth 1

echo "#####################################################################"
echo "#####################################################################"

cd arc-theme || exit
[[ -d build ]] || mkdir build
meson setup --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dtransparency=true build/
meson configure --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dtransparency=true build/
meson install -C build/
cd ..

echo "#####################################################################"
echo "#####################################################################"

function makearc {
	# if there is no hidden folder then make one
	[[ -d "$HOME/.themes" ]] || mkdir -p "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc-Dark "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc-Darker "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc-Lighter "$HOME/.themes"
}

makearc

#####################################################################
#####################################################################

rm -rf arc-theme
rm -rf /tmp/at/share/themes/{Arc,Arc-Darker,Arc-Dark,Arc-Lighter}
#sudo mv ~/.themes/Arc* /usr/share/themes

#####################################################################
#####################################################################

tput setaf 1
echo "End Creation of theme Arc"
tput sgr0

echo "#####################################################################"
echo "#####################################################################"
