VALUE=10

if [ "$VALUE" -lt 0 ]; then
    echo "value is less than 0"
else
    echo "value is greater than zero"

    if [ "$VALUE" -le 10 ]; then
	echo "value is less than 10"
    else
	echo "value is greater than or equal to 10"
    fi
fi
