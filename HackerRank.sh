# Bash HackerRank

# Write a bash script that prints the string "HELLO"
# echo "HELLO"

# Write a Bash script which accepts name as input and displays the greeting "Welcome (name)"
# read -p "Enter name: " name
# echo "Welcome $name"

# Use a for loop to display the natural numbers from  1 to 50.
# for num in {1..50}
# do
#    echo $num
# done

# Given two integers, X and Y , identify whether < or > or =
# read -p "X: " X
# read -p "Y: " Y
# if [[ "$X" -lt "Y" ]]; then
#    echo "X is less than Y"
# elif [[ "$X" -gt "Y" ]]; then
#    echo "X is greater than Y"
# else   
#    echo "X is equal to Y"
# fi

# Given two integers,  and , find their sum, difference, product, and quotient.
# read -p "Enter X: " X
# read -p "Enter Y: " Y
# echo $((X + Y))
# echo $((X - Y))
# echo $((X * Y))
# echo $((X / Y))


# Read in one character from STDIN.
# If the character is 'Y' or 'y' display "YES".
# If the character is 'N' or 'n' display "NO".
# No other character will be provided as input.

# read -p "Enter y or n: " char
# if [[ "$char" = 'Y' || "$char" = 'y' ]]; then
#    echo "YES"
# elif [[ "$char" = 'N' || "$char" = 'n' ]]; then
#    echo "NO"
# fi

# Your task is to use for loops to display only odd natural numbers from 1 to 99.
# for num in {1..99..2}
# do
# echo $num
# done

# Given three integers (X, Y, and Z) representing the three sides of a triangle, 
# identify whether the triangle is scalene, isosceles, or equilateral.

# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.

# read -p "Enter X: " x
# read -p "Enter Y: " y
# read -p "Enter Z: " z
# if [[ $x -eq $y && $x -eq $z ]];
# then 
#     echo "EQUILATERAL"
# elif [[ $x -eq $y || $x -eq $z || $y -eq $z ]];
# then    
#     echo "ISOSCELES"
# else echo "SCALENE"
# fi

# A mathematical expression containing +,-,*,^, / 
# and parenthesis will be provided. Read in the expression, 
# then evaluate it. Display the result rounded to  decimal places.
# Sample input: 5+50*3/20 + (19*2)/7
# Output: 17.929

# read -p "Enter the expression: " expression
# result=$(echo "scale=10; $expression" | bc)
# printf "%.3f\n" "$result"

# Given  integers, compute their average, rounded to three decimal places.
# Input Format: The first line contains an integer, .
# Each of the following  lines contains a single integer
# Output Format: Display the average of the  integers, rounded off to three decimal places.
# Input Constraints: 1<=N<=500
# -10000 <= x <= 10000
#  (x refers to elements of the list of integers for which the average is to be computed)
# Sample Input
# 4
# 1
# 2
# 9
# 8

# Sample Output
# 5.000
# THIS IS NOT CORRECT!
# read n #Read the number of integers
# sum=0 #Initialize sum
# for ((i=0; i<n; i++)); 
# do
#     read num #read each integer
#     sum=$((sum + num)) #Add num to sum
# done

# #Calc the avg
# average=$(echo "scale=3; $sum / $n" | bc)
# printf "%.3f\n" "$average"

# Given  lines of input, print the  character from 
# each line as a new line of output. It is guaranteed 
# that each of the  lines of input will have a  character.

while IFS= read -r line; do
#Extract the desired char
char="${line:2:1}"
echo "$char"
done < "$1"