#!/bin/sh
while read -r line
do
    IFS=' ' read -r -a array <<< "$line"
    echo "${array[1]} ${array[0]}"  # Outputs: element1
done  < "names.txt"


# Text Processing

# Create a new file called "names.txt" with the following 

# Baby Thanos
# Thanos Junior
# Liitle Thanos
# Biggest Thanos

# Write a bash script called "reverse_names.sh" that reads the contents of "names.txt", reverses the order of the first and last names, and prints the result to the terminal.
# Run the "reverse_names.sh" script and verify that the output is correct.

# Bonus Challenge (Time Permitting)
# Write a bash script called "palindrome.sh" that takes a string as an argument and checks if it is a palindrome (reads the same forward and backward). The script should print "Palindrome" or "Not a palindrome" accordingly.
# Test the "palindrome.sh" script with different inputs, such as "racecar" and "hello".

