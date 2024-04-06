#!/bin/sh
value=`cat infin_stones.txt`
echo "whole file: $value"

lines=$(echo $value | tr "," "\n")
declare -i count=0

re='^[0-9]+$'


for line in $lines
do

    if [[ "$line" =~ ^-?[0-9]+$ ]]; then
        echo "The line is an integer."
        count=$((count + $line))
    else    
        echo "The line is not an integer."
    fi

done
echo "$count"

touch total_stones.txt
echo "The total number of stones is: [$count]" > total_stones.txt


# File Operations

# Create a new directory called "shell_practice" in your home directory.
# Inside the "shell_practice" directory, create a file called "infin_stones.txt" with the following 


# power,5
# Time,3
# Reality,7
# Soul,2
# Mind,4
# Space,1




# Write a bash script called "stone_count.sh" that reads the contents of "infin_stones.txt", calculates the total number of stones, and appends the result to a new file called "total_stones.txt" in the following format:
# "The total number of stones is: [TOTAL]"
# Make the "stone_count.sh" script executable with the appropriate permissions.
# Run the "stone_count.sh" script and verify that the "total_stones.txt" file contains the correct output.
