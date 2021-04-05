#!/bin/bash

greet() {
  echo "Hello, $(whoami)"
}

greet

# Local args provided are different than the global ones
echo_two_args() {
  echo "Local args provided: $1 $2"
}

echo_two_args Lorem Ipsum
echo "Global args provided: $1 $2"

# If a function defines a variable inside its body
# it will be written to the global scope as well.
# To prevent that we user local keyword.

GLOBAL_ARG=1
LOCAL_ARG=2
echo_arg() {
  GLOBAL_ARG=2
  local LOCAL_ARG=3

  echo "Global arg was 1 and modified locally to: $GLOBAL_ARG"
  echo "Local arg value is: $LOCAL_ARG"
}

echo_arg
echo "Local arg outside the function is not changed: $LOCAL_ARG"
