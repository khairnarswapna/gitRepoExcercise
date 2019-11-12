#!/bin/bash -x

declare  -A resultDictinary

read -p "Enter value of a : " a 
read -p "Enter value of b : " b
read -p "Enter value of c : " c

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

echo "$( operation $(($a)) $(($b)) $(($c)) )"
echo "$( operation2 $(($a)) $(($b)) $(($c)) )"
echo "$( operation3 $(($a)) $(($b)) $(($c)) )"

function ResultAddedDictionary()
{
	resultDictionary["1"]="$( operation $a $b $c )"
	resultDictionary["2"]="$( operation2 $a $b $c )"
	resultDictionary["3"]="$( operation3 $a $b $c )"
 
}
ResultAddedDictionary

for (( i=0; i<=3; i++ ))
do
	ResultArray[(($i))]="${resultDictionary[$i]}"
       
done

function Descendingsort()
{
	sort=$( printf "%s\n" ${ResultArray[@]} | sort -nr )
}

function Ascendingsort()
{
	Ascendingsorti=$(printf "%s\n" ${ResultArray[@]} | sort -n )
}
Descendingsort
Ascendingsort
echo ${ResultArray[@]}

echo "descending sorting:"
echo $sort
echo "ascending sorting :"
echo $Ascendingsorti
