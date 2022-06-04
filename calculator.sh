#!/bin/bash
echo ""
echo ===============" simple calculator "=============
echo ""
echo "This script gets two numbers from the user and compute them depending on the user's choice"
echo ""
echo "What is your first name?"
read name
echo""
echo "Nice to meet you $name, let's get started"
echo ""
sum=0
i="y"
echo "Enter first number"
read n1
sleep 1
echo ""
echo "Enter second number"
read n2
sleep 1
echo ""
echo -------" Here the different operations: "---------
echo ""
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo ""
echo "Enter the number of your choice"
read ch
echo ""
echo "computing...."
sleep 2
echo""
case $ch in
	1)sum=$(( $n1 + $n2))
echo "Addition is =" $sum;;
2)sum=$(($n1 - $n2))
echo "Sub is =" $sum;;
3)sum=$(($n1 * $n2))
echo "Mul is =" $sum;;
4)sum=$(($n1 / $n2))
echo "div is =" $sum;;
*)echo "invalid choice"
esac
echo "Do you want to do another operation? y or n ?"
read i
if [ $i != "y" ]
then
	echo ""
	echo "THANK YOU"
exit
fi
done

