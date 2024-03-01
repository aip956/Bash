# Bash HackerRank

# Write a bash script that prints the string "HELLO"
echo "HELLO"

# Write a Bash script which accepts name as input and displays the greeting "Welcome (name)"
read -p "Enter name: " name
echo "Welcome $name"

# Use a for loop to display the natural numbers from  1 to 50.
for num in {1..50}
do
   echo $num
done

# Given two integers, X and Y , identify whether < or > or =
read -p "X: " X
read -p "Y: " Y
if [[ "$X" -lt "Y" ]]; then
   echo "X is less than Y"
elif [[ "$X" -gt "Y" ]]; then
   echo "X is greater than Y"
else   
   echo "X is equal to Y"
fi

# Given two integers,  and , find their sum, difference, product, and quotient.
read -p "Enter X: " X
read -p "Enter Y: " Y
echo $((X + Y))
echo $((X - Y))
echo $((X * Y))
echo $((X / Y))


# Read in one character from STDIN.
# If the character is 'Y' or 'y' display "YES".
# If the character is 'N' or 'n' display "NO".
# No other character will be provided as input.

read -p "Enter y or n: " char
if [[ "$char" = 'Y' || "$char" = 'y' ]]; then
   echo "YES"
elif [[ "$char" = 'N' || "$char" = 'n' ]]; then
   echo "NO"
fi

