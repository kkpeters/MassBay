#!/bin/bash
clear
echo "Set a number for x:"
read x
echo "Set a number for y:"
read y
echo "x=10, y=5"
echo "Addition of x and y"
echo $(( $x + $y ))
echo
echo "Subtraction of x and y"
echo $(( $x - $y ))
echo
echo "Multiplication of x and y"
echo $(( $x * $y ))
echo
echo "Division of x by y"
echo $(( $x / $y ))
echo
echo "Exponentiation of x,y"
echo $(( $x ** $y ))
echo
echo "Modular Division of x,y"
echo $(( $x % $y ))
echo
echo "Incrementing x by 10, then x= "
(( x += 10 ))
echo $x
echo
echo "Decrementing x by 15, then x= "
(( x -= 15 ))
echo $x
echo
echo "Multiply of x by 2, then x="
(( x *= 2 ))
echo $x
echo
echo "Dividing x by 5, x= "
(( x /= 5 ))
echo $x
echo
echo "Remainder of Dividing x by 5, x="
(( x %= 5 ))
echo $x
echo
