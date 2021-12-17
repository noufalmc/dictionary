#!/bin/bash
declare -a dice;
declare -a counter;

function storedictionary
{
    str=$3;
    if((str=='dice'))
    then
    dice[$1]=$2;
    elif((str=='counter'))
    then
    counter[$1]=$2;
    fi
    
}
n=0;
for((i=0;$n<10;i++))
do
   random=$((( RANDOM%6 )+1))
   storedictionary $i $random 'dice';
   echo "dice is" $random;
   case $random
        in 1)
        ((one++))
        n=$one;
        storedictionary 1 $n 'counter';

        ;;
        2)
        ((two++))
        n=$two;
        storedictionary 2 $n 'counter';
        ;;
        3) 
        ((three++))
        n=$three;
        storedictionary 3 $n 'counter';
        ;;
        4)
        ((four++))
        n=$four;
        storedictionary 4 $n 'counter';
        ;;
        5)
        ((five++))
        n=$five;
        storedictionary 5 $n 'counter';
        ;;
        6)
        ((six++))
        n=$six;
        storedictionary 6 $n 'counter';
        ;;
   esac
done
max=${counter[1]}
min=${counter[1]}
nummax=1;
nummin=1;
echo "Max"$max;
for((i=2;$i<7;i++))
do
 if(($max<${counter[$i]}))
 then
     max=${counter[$i]}
     nummax=$i;
 elif(($min>${counter[$i]}))
 then
    min=${counter[$i]}
    nummin=$i;

fi
done
echo "Dice" ${dice[@]}
echo "Counter" ${counter[@]}
echo "KEY " ${!counter[@]}
echo "maximum is "$max"number is"$nummax;
echo "minmum is "$min" number is"$nummin;