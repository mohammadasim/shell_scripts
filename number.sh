#! /bin/bash
number1=10
number2=20
# Arithmetic expansion is done by using double (()) with $ unlike command expansion which is done
# by using single () bracket

echo " Addition $(( number1 + number2 ))"
echo " Subtraction $(( number2 - number1 ))"
echo " Multiplication $(( number1 * number2 ))"
echo " Division $(( number2 / number1 ))"
echo " Rminder $(( 10 % 3 ))"
echo " Power of 2 $(( number2 ** 2 ))"
echo "------------------------------------------"
echo "To increase number1 by 5 $(( $number1 + 5 ))"