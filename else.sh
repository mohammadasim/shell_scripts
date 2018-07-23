#! /bin/bash
read -p "How old are you? " age
if [ ${age} -gt 100 ]; then
    echo "You are not very young"
else
    echo "you are still young"
fi
echo "Bye"

read   -p "Enter a interger number between 1 and 4 " num

if [ ${num} -eq 1 ]; then
    echo "Typed 1"
elif [ ${num} -eq 2 ]; then
    echo "Typed 2"
elif [ ${num} -eq 3 ]; then
    echo "Typed 3"
elif [ ${num} -eq 4 ]; then
    echo "Typed 4"
else
    echo "You didn't follow the instructions"
fi