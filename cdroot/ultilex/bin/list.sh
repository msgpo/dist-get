#!/bin/sh

echo
echo "Available meta data:"
echo

cd ../../

counter=0

for d in * ; do
	if [ -d $d -a ! $d = "boot" -a ! $d = "ultilex" -a -f $d/temp/meta ]; then
		echo $d
		counter=$(( counter + 1 ))
	fi
done

if [ $counter = 0 ]; then
	echo "--nothing--"
fi

echo
echo "Installed distributions:"
echo

counter=0

for d in * ; do
	if [ -d $d -a ! "$d" = "boot" -a ! "$d" = "ultilex" -a -f $d/meta/meta ]; then
		echo $d
		counter=$(( counter + 1 ))
	fi
done

if [ $counter = 0 ]; then
	echo "--nothing--"
fi

echo

cd ultilex/bin
