# (https://github.com/John-Jepsen/labs/blob/main/bash_scripting.md)
# https://docs.google.com/document/d/1T2lk7HDFrpUIZBJI7nJ9YVw6KH3RSaPF-zR2vAwoAI8/edit

# File Existence Check Script

echo "Enter the filename to check:"
read filename

if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
else
    echo "The file '$filename' does not exist."
fi
