COUNTER=0

for (( ;; ))
do
  if [ $COUNTER -eq 5 ]
  then
    echo "Counter is $(( COUNTER )), exiting"
    exit
  else
    echo "Counter: $(( COUNTER++ ))"
  fi
done
