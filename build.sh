#!/bin/bash

name=danger-o-meter

rm -f $name.pk3 \
&& \
zip $name.pk3 \
    *.txt \
    zscript/*.txt \
&& \
gzdoom -glversion 3 -file \
       $name.pk3 \
       ~/Programs/Games/wads/maps/DOOMTEST.wad \
       "$1" \
       +map test \
       -nomonsters \
       +notarget
