#!/bin/bash
error() {
	echo "Error: $1"
	exit 1
}
read -p "Enter the calculation this way(e.g. , 5 + 3): " num1 op num2


if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]];then
	error "invalid input"
fi


case $op in
	"+") result=$(echo "$num1 + $num2" | bc) ;;
	"-") result=$(echo "$num1 - $num2" | bc) ;;
	"*") result=$(echo "$num1 * $num2" | bc) ;;
	"/")[ "$num2" == "0" ] && error "Division by zero is not allowed" || result=$(echo "scale=2; $num1 / $num2" |bc);;
	*) error "Invalid operation";;
esac


echo "reslut: $result"



