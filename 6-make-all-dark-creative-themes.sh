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
	Aqua
	Archlinux-blue
	Arcolinux-blue
	Asparagus
	Azul
	Azure
	Botticelli
	Carnation
	Carolina-blue
	Casablanca
	Dark-salmon
	Deep-lavender
	Dodger-blue
	Evopop
	Fern
	Fire
	Froly
	Greyish-green
	Havelock
	Hibiscus
	Light-blue-gray
	Light-blue-surfn
	Light-salmon
	Mandy
	Mantis
	Medium-blue
	Nice-blue
	Numix
	Orangeish
	Pale-brown
	Paper
	Peach
	Pink
	Polo
	Punch
	Rusty-orange
	Slate-grey
	Sky-blue
	Smoke
	Soft-blue
	Tacao
	Tangerine
	Tory
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

	Aqua)
		# #66a8cb
		choice="Aqua"
		newcolour1="66a8cb"
		;;
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
	Asparagus)
		# #87B158
		choice="Asparagus"
		newcolour1="87B158"
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
	Botticelli)
		# #82a4b3
		choice="Botticelli"
		newcolour1="82a4b3"
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
	Casablanca)
		# #fdb95b
		choice="Casablanca"
		newcolour1="fdb95b"
		;;
	Dark-salmon)
		# #C15B58
		choice="Dark-salmon"
		newcolour1="C15B58"
		;;
	Deep-lavender)
		# #8C6EC9
		choice="Deep-lavender"
		newcolour1="8C6EC9"
		;;
	Dodger-blue)
		# #2A8DFF
		choice="Dodger-blue"
		newcolour1="2A8DFF"
		;;
	Evopop)
		# #1685a6
		choice="Evopop"
		newcolour1="1685a6"
		;;
	Fern)
		# #65B058
		choice="Fern"
		newcolour1="65B058"
		;;
	Fire)
		# #f68516
		choice="Fire"
		newcolour1="f68516"
		;;
	Froly)
		# #fd7980
		choice="Froly"
		newcolour1="fd7980"
		;;
	Greyish-green)
		# #8FA876
		choice="Greyish-green"
		newcolour1="8FA876"
		;;
	Havelock)
		# #6ba4e7
		choice="Havelock"
		newcolour1="6ba4e7"
		;;
	Hibiscus)
		# #d52f61
		choice="Hibiscus"
		newcolour1="d52f61"
		;;
	Light-blue-gray)
		# #B8A8BC
		choice="Light-blue-gray"
		newcolour1="B8A8BC"
		;;
	Light-blue-surfn)
		# #94C2E4
		choice="Light-blue-surfn"
		newcolour1="94C2E4"
		;;
	Light-salmon)
		# #FFA38D
		choice="Light-salmon"
		newcolour1="FFA38D"
		;;
	Mandy)
		# #c93648
		choice="Mandy"
		newcolour1="c93648"
		;;
	Mantis)
		# #6aa847
		choice="Mantis"
		newcolour1="6aa847"
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
	Numix)
		# #ffa726
		choice="Numix"
		newcolour1="ffa726"
		;;
	Orangeish)
		# #DA6F35
		choice="Orangeish"
		newcolour1="DA6F35"
		;;
	Pale-brown)
		# #AA876A
		choice="Pale-brown"
		newcolour1="AA876A"
		;;
	Paper)
		# #90a4ae
		choice="Paper"
		newcolour1="90a4ae"
		;;
	Peach)
		# #DB9D61
		choice="Peach"
		newcolour1="DB9D61"
		;;
	Pink)
		# #ce6ca2
		choice="Pink"
		newcolour1="ce6ca2"
		;;
	Polo)
		# #688bc6
		choice="Polo"
		newcolour1="688bc6"
		;;
	Punch)
		# #c03645
		choice="Punch"
		newcolour1="c03645"
		;;
	Rusty-orange)
		# #E56B1A
		choice="Rusty-orange"
		newcolour1="E56B1A"
		;;
	Slate-grey)
		# #636A78
		choice="Slate-grey"
		newcolour1="636A78"
		;;
	Sky-blue)
		# #7EC1FF
		choice="Sky-blue"
		newcolour1="7EC1FF"
		;;
	Smoke)
		# #a1a1a1
		choice="Smoke"
		newcolour1="a1a1a1"
		;;
	Soft-blue)
		# #5481E5
		choice="Soft-blue"
		newcolour1="5481E5"
		;;
	Tacao)
		# #efa369
		choice="Tacao"
		newcolour1="efa369"
		;;
	Tangerine)
		# #FF9500
		choice="Tangerine"
		newcolour1="FF9500"
		;;
	Tory)
		# #596bb0
		choice="Tory"
		newcolour1="596bb0"
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
	meson setup --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dvariants=dark build/
	meson configure --prefix=/tmp/at -Dthemes=cinnamon,gnome-shell,gtk2,gtk3,gtk4,metacity,plank,unity,xfwm -Dvariants=dark build/
	meson install -C build/
	cd ..

	echo "#####################################################################"
	echo "#####################################################################"

	function makearc {
		# if there is no hidden folder then make one
		[[ -d "$HOME/.themes" ]] || mkdir -p "$HOME/.themes"
		cp -rf /tmp/at/share/themes/Arc-Dark "$HOME/.themes"

		mv "$HOME/.themes/Arc-Dark" "$HOME/.themes/Arc-$choice-Dark"

		echo "#####################################################################"
		echo "#####################################################################"
		echo "Renaming inside the index.theme"
		echo "Arc-$choice-Dark"
		find "$HOME/.themes/Arc-$choice-Dark" -name "index.theme" -type f -exec sed -i "s/Name=Arc-Dark/Name=Arc-$choice-Dark/g" {} \;
		find "$HOME/.themes/Arc-$choice-Dark" -name "index.theme" -type f -exec sed -i "s/GtkTheme=Arc-Dark/GtkTheme=Arc-$choice-Dark/g" {} \;
		find "$HOME/.themes/Arc-$choice-Dark" -name "index.theme" -type f -exec sed -i "s/MetacityTheme=Arc-Dark/MetacityTheme=Arc-$choice-Dark/g" {} \;
	}

	makearc

	echo "#####################################################################"
	echo "#####################################################################"

	rm -rf /tmp/at/share/themes/Arc-Dark
	#sudo mv ~/.themes/Arc-"$choice"-Dark /usr/share/themes

	echo "#####################################################################"
	echo "#####################################################################"

	tput setaf 1
	echo "End Creation of theme nr :  $theme_count"
	echo "End Creation of theme name :  $choice"
	tput sgr0

	echo "#####################################################################"

done
