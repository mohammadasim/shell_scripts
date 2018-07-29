#! /bin/bash
mydate(){
	echo "Today is "
	date
	echo "Have a Great day"
}

hello2(){
	#$1 is the first value as input given to the function hellow() the second value can be called by $2 and so on
	echo  "hello $1"
	echo  "hello also to $2"
	# We can also give return values to the functions and those values can be checked by using $?
	return 35
}
echo "Start Here"

mydate

echo "It all ends Here"

echo "---------------------------------------------------"

hello2 "Aisha" "Asiya"
echo "the return code from the above function is $?"