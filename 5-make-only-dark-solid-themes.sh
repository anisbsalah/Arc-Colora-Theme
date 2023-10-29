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
	Dark-salmon
	Greyish-green
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

	Dark-salmon)
		# #C15B58
		choice="Dark-salmon"
		newcolour1="C15B58"
		;;
	Greyish-green)
		# #8FA876
		choice="Greyish-green"
		newcolour1="8FA876"
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
	meson setup --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dvariants=dark -Dtransparency=false build/
	meson configure --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dvariants=dark -Dtransparency=false build/
	meson install -C build/
	cd ..

	echo "#####################################################################"
	echo "#####################################################################"

	function makearc {
		# if there is no hidden folder then make one
		[[ -d "$HOME/.themes" ]] || mkdir -p "$HOME/.themes"
		cp -rf /tmp/at/share/themes/Arc-Dark-solid "$HOME/.themes"

		mv "$HOME/.themes/Arc-Dark-solid" "$HOME/.themes/Arc-$choice-Dark-solid"

		echo "#####################################################################"
		echo "#####################################################################"
		echo "Renaming inside the index.theme"
		echo "Arc-$choice-Dark-solid"
		find "$HOME/.themes/Arc-$choice-Dark-solid" -name "index.theme" -type f -exec sed -i "s/Name=Arc-Dark-solid/Name=Arc-$choice-Dark-solid/g" {} \;
		find "$HOME/.themes/Arc-$choice-Dark-solid" -name "index.theme" -type f -exec sed -i "s/GtkTheme=Arc-Dark-solid/GtkTheme=Arc-$choice-Dark-solid/g" {} \;
		find "$HOME/.themes/Arc-$choice-Dark-solid" -name "index.theme" -type f -exec sed -i "s/MetacityTheme=Arc-Dark-solid/MetacityTheme=Arc-$choice-Dark-solid/g" {} \;
		find "$HOME/.themes/Arc-$choice-Dark-solid" -name "index.theme" -type f -exec sed -i 's/transparent/solid/g' {} \;
	}

	makearc

	echo "#####################################################################"
	echo "#####################################################################"

	rm -rf /tmp/at/share/themes/Arc-Dark-solid
	#sudo mv ~/.themes/Arc-"$choice"-Dark-solid /usr/share/themes

	echo "#####################################################################"
	echo "#####################################################################"

	tput setaf 1
	echo "End Creation of theme nr :  $theme_count"
	echo "End Creation of theme name :  $choice"
	tput sgr0

	echo "#####################################################################"

done
