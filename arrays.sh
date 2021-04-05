#!/bin/bash

ARRAY=(Apple "Orange" Mango)

echo ${ARRAY[0]}

# update value at index 2
ARRAY[2]=Banana

# add new value to index 3
ARRAY[3]=Papaya

# length of an item at index 0
echo ${#ARRAY[0]}

# length of the array
echo ${#ARRAY[*]}

# we can iterate through the array with for:in
for FRUIT in ${ARRAY[@]}; do
    echo "Fruit: $FRUIT"
done

# we can iterate through the array using indexes
for INDEX in ${!ARRAY[@]}; do
    echo "Index: ${INDEX}, Fruit: ${ARRAY[INDEX]}"
done
