#! /bin/bash

myfunction(){
	var1="Eggs"
	local var2="Salad"
	echo "My first variable inside the function is: $var1"
	echo "My second variable insidethe function is: $var2"
}

# Important point to remember tha only in Shell script when a variable is defined like var1
# The variable is visible outside the function. It is because variables declared such are called global variables.
# The var2 is different its scoop is only  inside the function becuase we have used the key word local.
# It is highly recommended to use the keyword local when declaring a variable specially inside the function.
myfunction

echo "Let's check the values of variables outside too"
echo "The value of first variable outside the funciton is: $var1"
echo "-----------------------------------------------"
echo "the value of second variable outside the function is: $var2"
