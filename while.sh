counter=2
is_prime=1

echo -n "Give number: "; read $NUMBER

while  [ $counter -lt $NUMBER ]
do
  mod=$(( NUMBER % counter++ ))
  if [ $mod -eq 0 ]
  then
    echo "Not prime, divisible by $counter"
    is_prime=0
    exit
  fi
done

if [ is_prime -eq 1 ]
then
  echo "$NUMBER is a prime"
else
  echo "$NUMBER is not a prime"
fi
