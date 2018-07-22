#! /bin/bash
echo "Hello this is my first script"

echo "What is your name ? "
read yourname
echo "Hello ${yourname}, how are you"

read -p "what is your age? " age
echo "Oh your age is ${age}"

read -p "Which file would you like to open? " path
cat ${path}
