#! /usr/bin/env bash

if [ "$#" -lt 1 ] ; then
    echo "Usage: $0 <program>"
    exit
else
    cmd=$1
fi

echo "|Vector<br>Length|Wall Clock<br>Time|User Time|System Time|"
echo "|:--:|--:|--:|--:|"

format="%e %U %S"

vectorSizes=(10 100 1000 10000 100000 1000000 5000000 100000000 500000000 1000000000 5000000000)
for size in ${vectorSizes[@]} ; do
    runTime=( $( /usr/bin/time -f"$format" $cmd $size 2>&1 ; ) )
    printf "|%d|%5.2f|%5.2f|%5.2f|\n" $size ${runTime[@]}
done