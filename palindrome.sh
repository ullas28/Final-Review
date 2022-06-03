#!/bin/bash
echo "Enter number 1"
read num1
echo "Enter number 2"
read num2
 sum=0
remainder=0

palindrome()
{
while [ $num1 -gt 0 ]
do
 remainder=$(($num1 % 10))
 sum=$((($sum*10)+$remainder))
 num1=$(($num1/10))
done
 if [ $num2 -eq $sum ]
then
echo "Palindrome"
else
echo "Not a Palindrome"
fi
}
palindrome "$num1 $num2"
