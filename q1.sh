#!/bin/bash
read -p 'enter your number: ' num
if [ $num -lt 0 ]; then 
        echo "the weather is freezing"
elif [ $num -gt 0 ] && [ $num -lt 30 ]; then
        echo "the weather is cool"
elif [ $num -gt 30 ]; then
        echo "the weather is hot"
fi


