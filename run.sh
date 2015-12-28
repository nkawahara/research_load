#!/bin/bash

#
# Utility
#

function command_chk() {
	if type $1 > /dev/null 2>&1; then
		echo "o) $1 found"
	else
        echo "x) $1 is not found"
		echo "   You can try \"sudo apt-get install $1"
		exit 1 
	fi
}

function watz_chk() {
	echo "100W"
}

#
# Main
#
for cmd_nm in ffmpeg wget gcc make gnome-terminal top i7z 
do
	command_chk cmd_nm
done


# 
gnome-terminal --geometry=90x15+0+0 -e 'top'
gnome-terminal --geometry=110x30+900+300 -e 'sudo i7z'
sleep 5 

#short workload
gnome-terminal --geometry=100x50+300+300 -e "sh -c 'sh short_workload.sh'"
