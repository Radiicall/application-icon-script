#!/bin/bash
echo Application Icon Script: Starting.
ICONDIR="$HOME/Pictures/Spotify"
DESTDIR="/usr/share/icons/hicolor"
ICONAME="spotify-client"
echo
echo ==========================================================
echo "Which icon to change. (Default: ${ICONAME}) (CHECK .desktop FILE FOR ICON NAME AND NAME YOUR FILE APPROPRIATLY (file extension must be .png)"
read -p "Icon name: " ICONAME
echo
if [ "$ICONAME" != "" ];
 then
        echo "Icon name changed to "${ICONAME}"."
 else
        ICONAME="spotify-client"
        echo "Using default icon name."
fi
echo
echo "Directory where icons are stored. (Default: ${ICONDIR})"
read -p "Icon Directory: " ICONDIR
echo
if [ "$ICONDIR" != "" ];
 then
	echo "Icon directory changed to "${ICONDIR}"."
 else
	ICONDIR="$HOME/Pictures/Spotify"
	echo "Using default Icon directory."
fi
echo
echo "Where the icons should be moved to (Default: ${DESTDIR})"
read -p "Icon Destination: " DESTDIR
echo
if [ "$DESTDIR" != "" ];
 then
        echo "Destination directory changed to "${DESTDIR}"."
 else
        DESTDIR="/usr/share/icons/hicolor"
        echo "Using default destination."
fi
echo
echo Resizing Image
convert ${ICONAME}.png -resize 512x512 ${ICONAME}-512.png
convert ${ICONAME}.png -resize 256x256 ${ICONAME}-256.png
convert ${ICONAME}.png -resize 128x128 ${ICONAME}-128.png
convert ${ICONAME}.png -resize 64x64 ${ICONAME}-64.png
convert ${ICONAME}.png -resize 48x48 ${ICONAME}-48.png
convert ${ICONAME}.png -resize 32x32 ${ICONAME}-32.png
convert ${ICONAME}.png -resize 24x24 ${ICONAME}-24.png
convert ${ICONAME}.png -resize 22x22 ${ICONAME}-22.png
convert ${ICONAME}.png -resize 16x16 ${ICONAME}-16.png 

if [ -d "${DESTDIR}/32x32" ];
 then
 	echo Normal directory structure found.
	echo Starting in 5 seconds.
	sleep 5
	echo
	echo Making required directories
	mkdir -p ${DESTDIR}/512x512/apps/
	mkdir -p ${DESTDIR}/256x256/apps/
	mkdir -p ${DESTDIR}/128x128/apps/
	mkdir -p ${DESTDIR}/64x64/apps/
	mkdir -p ${DESTDIR}/48x48/apps/
	mkdir -p ${DESTDIR}/32x32/apps/
	mkdir -p ${DESTDIR}/24x24/apps/
	mkdir -p ${DESTDIR}/22x22/apps/
	mkdir -p ${DESTDIR}/16x16/apps/
	echo Copying icon files...
	cp ${ICONDIR}/${ICONAME}-512.png ${DESTDIR}/512x512/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-256.png ${DESTDIR}/256x256/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-128.png ${DESTDIR}/128x128/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-64.png ${DESTDIR}/64x64/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-48.png ${DESTDIR}/48x48/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-32.png ${DESTDIR}/32x32/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-24.png ${DESTDIR}/24x24/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-22.png ${DESTDIR}/22x22/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-16.png ${DESTDIR}/16x16/apps/${ICONAME}.png
 else
	echo Found non-standard directory structure in ${DESTDIR}.
	echo Starting in 5 seconds.
	sleep 5
	echo
	echo Making required directories
	mkdir -p ${DESTDIR}/512/apps/
	mkdir -p ${DESTDIR}/256/apps/
	mkdir -p ${DESTDIR}/128/apps/
	mkdir -p ${DESTDIR}/64/apps/
	mkdir -p ${DESTDIR}/48/apps/
	mkdir -p ${DESTDIR}/32/apps/
	mkdir -p ${DESTDIR}/24/apps/
	mkdir -p ${DESTDIR}/22/apps/
	mkdir -p ${DESTDIR}/16/apps/
	echo Copying icon files...
	cp ${ICONDIR}/${ICONAME}-512.png ${DESTDIR}/512/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-256.png ${DESTDIR}/256/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-128.png ${DESTDIR}/128/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-64.png ${DESTDIR}/64/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-48.png ${DESTDIR}/48/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-32.png ${DESTDIR}/32/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-24.png ${DESTDIR}/24/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-22.png ${DESTDIR}/22/apps/${ICONAME}.png
	cp ${ICONDIR}/${ICONAME}-16.png ${DESTDIR}/16/apps/${ICONAME}.png
fi
echo ==========================================================
echo
echo Application Icon Script: Finished!
