#!/bin/bash

MY_LOCAL_VAR="variable"

{
    sleep 1;
    echo "code-block: $MY_LOCAL_VAR"
}

( MY_LOCAL_VAR="subshell value"; echo "sub-shell: $MY_LOCAL_VAR" )

echo "main shell: $MY_LOCAL_VAR"
