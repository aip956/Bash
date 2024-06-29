# File Backup Script
echo "Enter the filename to back up:"
read filename

if [ -f "$filename" ]; then
    cp "$filename" "$filename.bak"
    echo "The file '$filename' has been backed up as '$filename.bak'."
else
    echo "The file '$filename' does not exist."
fi

# bash /Users/antheaip/Documents/Coding/Coding_Git/Bash/AdventureQuest/Ch7GuardianOfBackups.sh