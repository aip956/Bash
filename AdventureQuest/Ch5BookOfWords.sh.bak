# Word Count Script
echo "Enter the filename to count words in:"
read filename

if [ -f "$filename" ]; then
    word_count=$(wc -w < "$filename")
    echo "The file '$filename' contains $word_count words."
else
    echo "The file '$filename' does not exist."
fi
