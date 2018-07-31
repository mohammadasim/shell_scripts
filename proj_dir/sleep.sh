#! /bin/bash
number=2
while [ "$number" -le 20 ];
do
    echo "The number is $number"
    ((number +=2))
    sleep 0.5
done
echo "End of loop"-------
