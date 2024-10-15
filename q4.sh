#!/bin/bash
read -p "enter a num: " num


reverse=""

for (( i=${#num}-1; i>=0; i-- ));do
	reverse+="${num:$i:1}"
done


echo "reversed: $reverse"
