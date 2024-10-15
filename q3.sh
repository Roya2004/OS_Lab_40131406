#!/bin/bash


celcius_to_fahrenheit() {
	echo "scale=2; ($1 * 9/5) + 32" | bc
}



read -p 'enter your number: ' num
fahrenheit=$(celcius_to_fahrenheit "$num")
if [ $num -lt 0 ]; then 
        echo "the weather is freezing"
elif [ $num -gt 0 ] && [ $num -lt 30 ]; then
        echo "the weather is cool"
elif [ $num -gt 30 ]; then
        echo "the weather is hot"
fi

echo "fahrenheit format of temp: $fahrenheit"


