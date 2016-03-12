#!/bin/bash

for n in $*; do
  i=$(bc <<< "sqrt($n) + 1")
  while [[ $i > 0 ]]; do
    if [[ $(($n % $i)) == 0 ]]; then
      echo "$n closest factors: $i x $(($n / $i))"
      break
    fi
    i=$(($i - 1))
  done
done
