#!/bin/bash -x
read -p "Enter value of a : " a 
read -p "Enter value of b : " b
read -p "Enter value of c : " c

ans=$((a+b*c))
echo "$a + $b * $c = $ans"

ans1=$((c+a/b))
echo "$c + $a / $b =$ans1"

ans2=$((a%b+c))
echo="$a % $b + $c=$ans2"

function operation()
{
    result=$(($1+$2*$3))
    echo $result
}

function operation2()
{
    result=$(($1+$2/$3))
    echo $result
}

function operation3()
{
     result=$(($1%$2+$3))
     echo $result
}

result1="$( operation $(($a)) $(($b)) $(($c)) )"
result2="$( operation2 $(($a)) $(($b)) $(($c)) )"
result3="$( operation3 $(($a)) $(($b)) $(($c)) )"

echo $result1
echo $result2
echo $result3


