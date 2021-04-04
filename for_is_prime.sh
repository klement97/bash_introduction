echo -n "Give number: "
read -r NUMBER

LIMIT=$((NUMBER / 2))

for (( i=2; i<LIMIT; i++  ))
do
  modulus=$((NUMBER % i))
  if [ $modulus -eq 0 ]; then
    echo "This is not a prime number because it is divisible by: $i"
    exit
  fi
done

if [ "$i" -eq "$LIMIT" ]; then
  echo "This number is a prime"
fi
