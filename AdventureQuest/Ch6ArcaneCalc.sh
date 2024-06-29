# Basic Calculator Script
echo "Enter the first number:"
read num1

echo "Enter the operator (+, -, *, /):"
read operator

echo "Enter the second number:"
read num2

case $operator in
    +) result=$(echo "$num1 + $num2" | bc) ;;
    -) result=$(echo "$num1 - $num2" | bc) ;;
    \*) result=$(echo "$num1 * $num2" | bc) ;;
    /) result=$(echo "scale=2; $num1 / $num2" | bc) ;;
    *) echo "Invalid operator"; exit 1 ;
esac

echo "The result of $num1 $operator $num2 is: $result"

