#!/bin/bash 
#Reference: 
#   https://stackoverflow.com/questions/4439536/shell-script-to-parse-through-a-file-csv-and-process-line-by-line
export IFS=","

iRow=0
totalMiles=0
totalTime=0

cat input.txt | while 
    read workout duration distance units notes; 
do 
    if [ $iRow = 0 ]
    then
        echo "It's the first row."
        let "iRow++"
    else
        echo "$workout : $duration : $distance : $units : $notes";
        let "totalMiles+=distance"
    fi

    echo "Total Miles: $totalMiles"
done