#! /usr/bin/env sh

if [ -z $1 ]; then
	echo "No percentage specified"
	exit 1
fi

maxvol=120

sinks=$(pactl list sinks | grep '^[[:space:]]Volume:' | awk '
{
	l = substr($5, 1, length($5)-1)
	r = substr($12, 1, length($12)-1)
	if(l > r){
		print l
	} else {
		print r
	}
}') 
count=0
for s in $sinks; do
	if [ $1 == "mute" ]; then
		pactl set-sink-mute $count toggle
	elif [ "$s" -le "$maxvol" ] || [[ ${1:0:1} == "-" ]] ; then
		pactl set-sink-volume $count $1
	fi
	count=$(($count + 1))
done
