#!/bin/bash

declare -a month;
for((i=0;$i<=50;i++))
do 
  random=$(((RANDOM%13)+1))
  then
  case $random
  in 1)
     cou=${month[1]};
     ((cou++))
     month[jan]=$((cou));
     ;;
     2)
     cou=${month[2]};
     ((cou++))
     month[feb]=$((cou));
     ;;
     3)
     cou=${month[3]};
     ((cou++))
     month[3]=$((cou));
     ;;
     4)
     cou=${month[4]};
     ((cou++))
     month[4]=$((cou));
     ;;
     5)
     cou=${month[5]};
     ((cou++))
     month[5]=$((cou));
     ;;
     6)
     cou=${month[6]};
     ((cou++))
     month[6]=$((cou));
     ;;
     7)
     cou=${month[7]};
     ((cou++))
     month[7]=$((cou));
     ;;
     8)
     cou=${month[8]};
     ((cou++))
     month[8]=$((cou));
     ;;
     9)
     cou=${month[9]};
     ((cou++))
     month[9]=$((cou));
     ;;
     10)
     cou=${month[10]};
     ((cou++))
     month[10]=$((cou));
     ;;
     11)
     cou=${month[11]};
     ((cou++))
     month[11]=$((cou));
     ;;
     12)
     cou=${month[12]};
     ((cou++))
     month[12]=$((cou));
     ;;
    esac
done
echo "arra"${month[@]}
echo "arra"${!month[@]}


