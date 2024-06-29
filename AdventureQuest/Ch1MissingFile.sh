# File Existence Check Script

echo "Enter the filename to check:"
read filename

if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
else
    echo "The file '$filename' does not exist."
fi
