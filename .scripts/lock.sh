#!/bin/bash

IMAGE='/tmp/lock.png'

scrot $IMAGE

# convert to pixel
#convert $IMAGE -scale 10% -scale 1000% $IMAGE

# convert to blur
convert $IMAGE -blur '5x3' $IMAGE

i3lock \
-i $IMAGE \
--clock \
--radius=120 \
--datecolor=ffffffff \
--timecolor=ffffffff \
--keyhlcolor=#b6e87599 \
--bshlcolor=#ffc15099 \
--ringcolor=#ffffff11 \
--insidecolor=#ffffff11 \
--linecolor=ffffffff \
--ringvercolor=#ffffff11 \
--insidevercolor=#75d3ff99 \
--verifcolor=#ffffffff \
--ringwrongcolor=#ffffff11 \
--insidewrongcolor=#ff355b99 \
--wrongcolor=#ffffffff

rm $IMAGE

