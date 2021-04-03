A=1
B=2
C=3

MIN="$A"

if [ "$B" -lt "$MIN" ]; then
  MIN="$B"
elif [ "$C" -lt "$MIN" ]; then
  MIN="$C"
fi

echo "Minimum number is: " "$MIN"
