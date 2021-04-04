#!/bin/bash
COUNTER=2

echo -n "Give number: "
read -r NUMBER

if [ "$NUMBER" -le 3 ]; then
  echo "$NUMBER is a prime"
  exit
fi

LIMIT=$((NUMBER / 2))

until [ $COUNTER -eq $LIMIT ]; do
  MODULUS=$((NUMBER % COUNTER++))
  if [ $MODULUS -eq 0 ]; then
    echo "$NUMBER is not a prime, divisible by $((COUNTER - 1))"
    exit
  fi
done

if [ "$COUNTER" -eq "$LIMIT" ]; then
  echo "$NUMBER is a prime"
fi
