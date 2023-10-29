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

theme_count=0

# what themes are we going to create
arrayname=(
	Archlinux-blue
	Arcolinux-blue
	Azul
	Azure
	Bright-lilal
	Carnation
	Carolina-blue
	Dodger-blue
	Fern
	Light-blue-grey
	Light-blue-surfn
	Light-lime-green
	Light-salmon
	Medium-blue
	Nice-blue
	Pale-grey
	Red-orange
	Rusty-orange
	Sky-blue
	Slate-grey
	Soft-blue
	Tangerine
	Warm-pink
)

# or just a few
# arrayname=(Nice-blue Pale-grey)

for m in "${arrayname[@]}"; do

	tput setaf 3
	echo "Deleting old files and downloading the latest arc-theme from github"
	tput sgr0
	[[ -d arc-theme ]] && rm -rf arc-theme
	[[ -d /tmp/at ]] && rm -rf /tmp/at
	git clone https://github.com/jnsh/arc-theme

	case "${m}" in

	Archlinux-blue)
		# #1793D1
		choice="Archlinux-blue"
		newcolour1="1793D1"
		;;
	Arcolinux-blue)
		# #6790eb
		choice="Arcolinux-blue"
		newcolour1="6790eb"
		;;
	Azul)
		# #456CFF
		choice="Azul"
		newcolour1="456CFF"
		;;
	Azure)
		# #10ADFF
		choice="Azure"
		newcolour1="10ADFF"
		;;
	Bright-lilal)
		# #CD58FF
		choice="Bright-lilac"
		newcolour1="CD58FF"
		;;
	Carnation)
		# #FE6D88
		choice="Carnation"
		newcolour1="FE6D88"
		;;
	Carolina-blue)
		# #6BA4E7
		choice="Carolina-blue"
		newcolour1="6BA4E7"
		;;
	Dodger-blue)
		# #2A8DFF
		choice="Dodger-blue"
		newcolour1="2A8DFF"
		;;
	Fern)
		# #65B058
		choice="Fern"
		newcolour1="65B058"
		;;
	Light-blue-grey)
		# #B8A8BC
		choice="Light-blue-gray"
		newcolour1="B8A8BC"
		;;
	Light-blue-surfn)
		# #94C2E4
		choice="Light-blue-surfn"
		newcolour1="94C2E4"
		;;
	Light-lime-green)
		# #B5F652
		choice="Light-lime-green"
		newcolour1="B5F652"
		;;
	Light-salmon)
		# #FFA38D
		choice="Light-salmon"
		newcolour1="FFA38D"
		;;
	Medium-blue)
		# #4A71C4
		choice="Medium-blue"
		newcolour1="4A71C4"
		;;
	Nice-blue)
		# #147EB8
		choice="Nice-blue"
		newcolour1="147EB8"
		;;
	Pale-grey)
		# #E1E3E7
		choice="Pale-grey"
		newcolour1="E1E3E7"
		;;
	Red-orange)
		# #FE5100
		choice="Red-orange"
		newcolour1="FE5100"
		;;
	Rusty-orange)
		# #E56B1A
		choice="Rusty-orange"
		newcolour1="E56B1A"
		;;
	Sky-blue)
		# #7EC1FF
		choice="Sky-blue"
		newcolour1="7EC1FF"
		;;
	Slate-grey)
		# #636A78
		choice="Slate-grey"
		newcolour1="636A78"
		;;
	Soft-blue)
		# #5481E5
		choice="Soft-blue"
		newcolour1="5481E5"
		;;
	Tangerine)
		# #FF9500
		choice="Tangerine"
		newcolour1="FF9500"
		;;
	Warm-pink)
		# #FD3E84
		choice="Warm-pink"
		newcolour1="FD3E84"
		;;

	esac

	theme_count=$((theme_count + 1))

	tput setaf 1
	echo "Start Creation of theme nr :  $theme_count"
	echo "Start Creation of theme name :  $choice"
	echo "Using this color :  $newcolour1"
	tput sgr0

	#############################################
	# changing all blue colours
	#############################################

	# change all rgb colours
	count=0

	rgbfunction() {
		foldcolour1=$1
		fnewcolour1=$2
		find arc-theme/common -type f -exec sed -i "s/$foldcolour1/$fnewcolour1/g" {} \;
		echo "The rgb colour $foldcolour1 is changed into $fnewcolour1"
	}

	count=$((count + 1))
	echo "Fix  $count"
	echo "Making sure all colour codes have capital letters"
	echo "The very common colour #5294e2 is changed into capital letters."
	rgbfunction "5294e2" "5294E2"

	count=$((count + 1))
	echo "Fix  $count"
	echo "The very common colour #5294E2 is changed into the newcolour1."
	rgbfunction "5294E2" "$newcolour1"

	count=$((count + 1))
	echo "Fix  $count"
	echo "The colour #4a85cb is changed into the newcolour1."
	rgbfunction "4a85cb" "$newcolour1"

	count=$((count + 1))
	echo "Fix  $count"
	echo "The colour #4DADD4 is changed into the newcolour1."
	rgbfunction "4DADD4" "$newcolour1"

	count=$((count + 1))
	echo "Fix  $count"
	echo "The colour #76c0de is changed into the newcolour1."
	rgbfunction "76c0de" "$newcolour1"

	count=$((count + 1))
	echo "Fix  $count"
	echo "The colour #2e96c0 is changed into the newcolour1."
	rgbfunction "2e96c0" "$newcolour1"

	count=$((count + 1))
	echo "Fix  $count"
	echo "The colour #2679db is changed into the newcolour1."
	rgbfunction "2679db" "$newcolour1"

	rgbafunction() {
		foldcolour1=$1
		fnewcolour1=$2
		redhex=${fnewcolour1:0:2}
		greenhex=${fnewcolour1:2:2}
		bluehex=${fnewcolour1:4:2}

		reddec=$((16#$redhex))
		greendec=$((16#$greenhex))
		bluedec=$((16#$bluehex))

		rgbacolour="$reddec, $greendec, $bluedec"

		# old rgba colour of background rubberband

		fnewcolour1=$rgbacolour

		find arc-theme/common -type f -exec sed -i "s/$foldcolour1/$fnewcolour1/g" {} \;

		echo "The rgba colour $foldcolour1 is changed into $fnewcolour1"

	}
	count=$((count + 1))
	echo "Fix rgba  $count"
	rgbafunction "38, 121, 219" "$newcolour1"

	count=$((count + 1))
	echo "Fix rgba  $count"
	rgbafunction "82, 148, 226" "$newcolour1"

	count=$((count + 1))
	echo "Fix rgba  $count"
	rgbafunction "65, 137, 223" "$newcolour1"

	echo "#####################################################################"
	echo "#####################################################################"

	cd arc-theme || exit
	[[ -d build ]] || mkdir build
	meson setup --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm build/
	meson configure --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm build/
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

		mv "$HOME/.themes/Arc" "$HOME/.themes/Arc-$choice"
		mv "$HOME/.themes/Arc-Dark" "$HOME/.themes/Arc-$choice-Dark"
		mv "$HOME/.themes/Arc-Darker" "$HOME/.themes/Arc-$choice-Darker"
		mv "$HOME/.themes/Arc-Lighter" "$HOME/.themes/Arc-$choice-Lighter"

		echo "#####################################################################"
		echo "#####################################################################"
		echo "Renaming the content of the index.theme"
		echo "Arc-$choice-Darker"
		find "$HOME/.themes/Arc-$choice-Darker" -name "index.theme" -type f -exec sed -i "s/Name=Arc-Darker/Name=Arc-$choice-Darker/g" {} \;
		find "$HOME/.themes/Arc-$choice-Darker" -name "index.theme" -type f -exec sed -i "s/GtkTheme=Arc-Darker/GtkTheme=Arc-$choice-Darker/g" {} \;
		find "$HOME/.themes/Arc-$choice-Darker" -name "index.theme" -type f -exec sed -i "s/MetacityTheme=Arc-Darker/MetacityTheme=Arc-$choice-Darker/g" {} \;
		echo "################################################################"
		echo "Renaming inside the index.theme"
		echo "Arc-$choice-Dark"
		find "$HOME/.themes/Arc-$choice-Dark" -name "index.theme" -type f -exec sed -i "s/Name=Arc-Dark/Name=Arc-$choice-Dark/g" {} \;
		find "$HOME/.themes/Arc-$choice-Dark" -name "index.theme" -type f -exec sed -i "s/GtkTheme=Arc-Dark/GtkTheme=Arc-$choice-Dark/g" {} \;
		find "$HOME/.themes/Arc-$choice-Dark" -name "index.theme" -type f -exec sed -i "s/MetacityTheme=Arc-Dark/MetacityTheme=Arc-$choice-Dark/g" {} \;
		echo "################################################################"
		echo "Renaming inside the index.theme"
		echo "Arc-$choice"
		find "$HOME/.themes/Arc-$choice" -name "index.theme" -type f -exec sed -i "s/Name=Arc/Name=Arc-$choice/g" {} \;
		find "$HOME/.themes/Arc-$choice" -name "index.theme" -type f -exec sed -i "s/GtkTheme=Arc/GtkTheme=Arc-$choice/g" {} \;
		find "$HOME/.themes/Arc-$choice" -name "index.theme" -type f -exec sed -i "s/MetacityTheme=Arc/MetacityTheme=Arc-$choice/g" {} \;
		echo "################################################################"
		echo "Renaming the content of the index.theme"
		echo "Arc-$choice-Lighter"
		find "$HOME/.themes/Arc-$choice-Lighter" -name "index.theme" -type f -exec sed -i "s/Name=Arc-Lighter/Name=Arc-$choice-Lighter/g" {} \;
		find "$HOME/.themes/Arc-$choice-Lighter" -name "index.theme" -type f -exec sed -i "s/GtkTheme=Arc-Lighter/GtkTheme=Arc-$choice-Lighter/g" {} \;
		find "$HOME/.themes/Arc-$choice-Lighter" -name "index.theme" -type f -exec sed -i "s/MetacityTheme=Arc-Lighter/MetacityTheme=Arc-$choice-Lighter/g" {} \;
	}

	makearc

	echo "#####################################################################"
	echo "#####################################################################"

	rm -rf /tmp/at/share/themes/{Arc,Arc-Darker,Arc-Dark,Arc-Lighter}

	echo "#####################################################################"
	echo "#####################################################################"

	tput setaf 1
	echo "End Creation of theme nr :  $theme_count"
	echo "End Creation of theme name :  $choice"
	tput sgr0

	echo "#####################################################################"

done
