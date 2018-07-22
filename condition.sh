#! /bin/bash

echo "hello"

if [ 3 -eq 5 ]; then
	echo "yes they are the same"
fi

echo "continue with our program"
echo "bye"

if [ -f condition.sh ]; then
    echo "condition.sh exists"
fi 

if [ -x condition.sh ]; then
    echo "File exists and is excutable"
fi

if [ -r conidtion.sh ]; then
    echo "conidtion.sh exists and is readable"
fi

file=/Users/mohammad.ayub/shell_scripts/condition.sh

if [ -f ${file} ]; then
    echo "condition.sh exists using variable"
fi


# 3 -eq 3  		3 = 3
# 3 -ne 4		3 is not 4
# 3 -gt 1		3 > 1
# 3 -lt 7		3 < 7

# 3 -ge 3 		3 >= 3
# 3 -le 3 		3 <= 3