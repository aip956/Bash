# File Count Script
echo "Enter the directory to count files in:"
read dir

if [ -d "$dir" ]; then
    file_count=$(ls -1q "$dir" | wc -l)

    echo "There are $file_count files in the directory '$dir'."
else
    echo "The directory '$dir' does not exist."
fi

# To enter the AdventureQuest directory, run the following command: . 

