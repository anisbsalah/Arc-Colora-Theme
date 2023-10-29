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
meson setup --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dtransparency=false build/
meson configure --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dtransparency=false build/
meson install -C build/
cd ..

echo "#####################################################################"
echo "#####################################################################"

function makearc {
	# if there is no hidden folder then make one
	[[ -d "$HOME/.themes" ]] || mkdir -p "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc-solid "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc-Dark-solid "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc-Darker-solid "$HOME/.themes"
	cp -rf /tmp/at/share/themes/Arc-Lighter-solid "$HOME/.themes"
	sed -i 's/transparent/solid/g' "$HOME"/.themes/*-solid/index.theme
}

makearc

#####################################################################
#####################################################################

rm -rf arc-theme
rm -rf /tmp/at/share/themes/{Arc-solid,Arc-Darker-solid,Arc-Dark-solid,Arc-Lighter-solid}
#sudo mv ~/.themes/Arc* /usr/share/themes

#####################################################################
#####################################################################

tput setaf 1
echo "End Creation of theme Arc (solid)"
tput sgr0

echo "#####################################################################"
echo "#####################################################################"
