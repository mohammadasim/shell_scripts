#! /bin/bash
number=1
while [ $number -le 10 ];
do
    echo "The number is  $number"
    ((number+=1))
done
echo "Loop completed! bye"