#!/bin/bash
# Read user input

# echo "Enter name: "
# read 
# echo "Name: $REPLY"

# Echo $0 ' > echo $0'
# Echo $1 $2 $3 $4 ' > echo Hi there its me'

# args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}

# lsResult=$(ls)
# echo "My files: "$lsResult

# read -p "username: " user_var
# read -sp "password: " pass_var
# echo
# echo "The username is: " $user_var
# echo "The password is: " $pass_var

# echo "Enter names: "
# read -a names
# echo "The entered names are: ${names[0]}, ${names[1]}. "

# d=`date +%m-%Y`
# echo "Date in format MM-YYYY: "
# echo $d 

# Sum=$((10+3))
# echo "Sum = $Sum"

# x=10
# y=6
# z=0
# # echo "Addition"
# # let "z=$((x+y))"
# # echo "z = $z"
# echo "z= `expr $x + $y`"

# read -p "Enter number: " number
# if [ "$number" -gt 125 ]; then
# echo "Value greater than 125"
# fi

# Prompt the user to enter a file name
# read -p "Enter a file name: " file_name

# # Use realpath to get the full path of the file
# file_path=$(realpath "$file_name")

# # Check if the file exists
# if [ -e "$file_path" ]; then
#     echo "The full path of $file_name is $file_path"
# else
#     echo "$file_name does not exist"
# fi
# read -p "Enter a file name: " file
# if [ -s "$file" ]; then
# echo "$file not empty"
# fi

# Can use CLI too:
# if [ -e "$(realpath test.sh)" ]; then echo "$(realpath test.sh)"; else echo "File does not exist"; fi

# echo "Do you know Java?"
# read -p "Yes/No: " Answer
# case $Answer in
#     Yes|yes|y|Y)
#         echo "That's amazing"
#         echo
#         ;;
#     No|no|n|N)
#         echo "Let's start"
#         echo
#         ;;
# esac

# Case
# learn="Start learning Java"
# for learn in $learn
# do
# echo $learn
# done
# echo "Thanks!!"

# for num in {10..0..1}
# do
# echo $num
# done
# echo "Here are the nums"

# arr=("You're ""not ""the ""boss ""of ""me")
# for i in "${arr[@]}"
# do
# echo $i
# done

# str="You're not the boss 
# of me"
# for i in $str; 
# do
# echo "$i"
# done

# str="You're not 
# the boss 
# of me"
# for i in "$str"; 
# do
# echo "$i"
# done

# for ((i=1; i<=10; i++))
# do
# echo "$i"
# done

# for table in {2..100..2}
# do
# echo $table
# if [ $table -eq 20 ]; then
# break
# fi
# done

#Numbers from 1 to 20, ignoring from 6 to 15 using continue statement" 
# for ((i = 1; i <= 20; i++));
# do
# if [[ $i -gt 5 && $i -lt 16 ]];
# then
# continue
# fi
# echo $i
# done 

# read -p "Enter start number: " start
# read -p "Enter end number: " end
# while [[ $start -le $end ]];
# do 
# echo $start
# ((start++))
# done
# echo "The end"

# read -p "Enter the start: " start
# read -p "Enter the end: " end
# while [[ $start -lt $end || $start == $end ]];
# do 
# echo $start
# ((start++))
# done

# echo "Countdown"
# i=10
#  the $i is used with numerical operand -ge, so quotes not required
# while [ $i -ge 1 ]
# do
# if [ $i == 2 ]
# then 
#     echo "Mission Aborted; i==2"
#     break
# fi
# echo "$i"
# ((i--))
# done

# While Loop with a Continue
# i=0
# while [ $i -le 10 ]
# do
# ((i++))
# Using double [], more powerful construct; good 
# practice to use quotes
# if [[ "$i" == 5 ]];
# then
#     continue
# fi
# echo "Current Number: $i"
# done

#While loop with C-style
# i=1
# while((i<=10))
# do
# echo $i
# let i++
# done

# Bash until loop with single condition
# i=1
# until [ $i -gt 10 ]
# do 
# echo $i
# ((i++))
# done

# Bash until loop with multi conditions
# max=5
# a=1
# b=0
# until [[ $a -gt $max || $b -gt $max ]];
# do
# echo "a = $a & b = $b"
# ((a++))
# ((b++))
# done

# Using equal:
# str1="WelcometoJavatpoint"
# str2="javatpoint"
# if [ $str1 = $str2 ];
# then
#     echo "Both strings are equal"
# else
#     echo "Strings not equal"
# fi

# Not Equal
# str1="WelcometoJavatpoint"
# str2="javatpoint"
# if [ $str1 != $str2 ];
# then
#     echo "Both strings are not equal"
# else
#     echo "Strings equal"
# fi

# Less than:
# read -p "Enter string1: " str1
# read -p "Enter string2: " str2
# if [[ $str1 < $str2 ]];
# then 
#     echo "$str1 is less than $str2"
# else 
#     echo "$str1 is not less than $str2"
# fi

# # Greater than; use double [[ ... ]]
# read -p "Enter string1: " str1
# read -p "Enter string2: " str2
# if [[ $str1 > $str2 ]];
# then 
#     echo "$str1 is not less than $str2"
# else 
#     echo "$str1 is less than $str2"
# fi

# To check if the string length > 0
# read -p "Enter a string: " str
# if [[ -n $str ]]
# then
#     echo "$str not empty"
# else 
#     echo "$str empty"
# fi

# To check if the string length is = 0
# read -p "Enter string: " str
# if [[ -z $str ]]
# then    
#     echo "$str length is 0"
# else   
#     echo "$str length is not 0"
# fi

# 1.  ${#string}  
# 2.  expr length "$string"  
# 3.  expr "$string" :'.*'  
# 4.  $str | wc -c  
# 5.  $str |awk '{print length}'  
# str="Welcome to Javatpoint"
# length1=${#str}
# length2=`expr length "$str"`
# length3=$(expr "$str" : '.*')
# length4=$(echo "$str" | wc -c)
# length5=$(echo "$str" | awk '{print length}')
# echo "$length1 using method 1"
# echo "$length2 using method 2"
# echo "$length3 using method 3"
# echo "$length4 using method 4"
# echo "$length5 using method 5"

# Split by space
# read -p "Enter a string to split by space: " str
# IFS=" " #setting space as delimiter
# read -ra ADDR <<< "$str" #Reading str as an array as tocens sep by IFS
# for i in "${ADDR[@]}"; #Accessing each elem of array
# do
# echo "$i"
# done

# Split by Symbol
# read -p "Enter Name, State, Hair to split by comma: " str
# IFS=','
# read -a strarr <<< "$str" #Read in str as an array separated by IFS
# echo "Name: ${strarr[0]}"
# echo "State: ${strarr[1]}"
# echo "Hair: ${strarr[2]}"

# Split without $IFS; can't get this to work
# read -p "Enter any string separated by (:): " str #Reading in string
# readarray -d : -t strarr <<< "$str" #Split based on delimiter :
# printf "\n"
# #Print each value
# for (( n=0; n<${#strarr[*]};n++))
# do
#     echo "${strarr[n]}"
# done

#Split string by another string
# str="WeLearnWelcomeLearnYouLearnOnLearnJava"
# delimiter="Learn"
# s="$str$delimiter"
# array=()

# while [[ $s ]];
# do
# array+=("${s%%$delimiter*}")
# s=${s#*$delimiter}
# done
# declare -p array

# Split using Trim
# my_str="we;welcome;you;on;javatpoint"
# my_arr=($(echo $my_str | tr ";" "\n"))
# for i in "${my_arr[@]}"
# do
#     echo $i
# done

# Extract a substring; first 10 chars
# str="We welcome you on Javatpoint"
# echo "String: $str"
# echo "Total chars in the string: ${#str}"
# substr="${str:0:10}"
# echo "Substring: $substr"
# echo "Total chars in the substring: ${#substr}"

# X=5
# Y=2
# echo $((X+Y))

# Bash Substring: Extract till Specific Chars onwards
# str="We welcome you on Javatpoint"
# # substr=”${str:11}”
# # Echo $substr

# substr=”${str:(-11)}”
# Echo "$substr"

# Concatenate
# str1="We welcome you"
# str2=" on Javatpoint"
# str3="$str1$str2"
# echo "$str3"

# Print the elements of an array all on one line and 
# separated by a space. It is guaranteed that no elements
#  will be empty.
my_array=("A1", "b2", "C3d", "412", "ee")
# for elem in "${my_array[@]}";
# do
#     echo -n "$elem, "
# done | tr ',' ' '
# echo

# for elem in "${my_array[@]}"
# do
#     echo "$elem"
# done

# Array length ${#a[@]}

echo ${#my_array[@]}