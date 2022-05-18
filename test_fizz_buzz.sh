#!/bin/sh

ESC=$(printf '\033')

function printResult () {
  if [[ $1 -eq 0 ]]; then
    printf "${ESC}[92mSuccess!${ESC}[m\n"
  fi
  if [[ $1 -eq 1 ]]; then
    printf "${ESC}[91mFailed...${ESC}[m\n" 1>&2
  fi
}

function testTemplate () {
  echo $1
  echo "params:" $2
  echo "expect:" $3
  for numbers in $2
  do
  test $3 = $(echo $numbers | ./fizz_buzz.awk); printResult $?
  done
}

multiple_of_3=$(seq 3 3 100)
multiple_of_3_without_multiple_15="$(echo "$multiple_of_3" | awk '{for (i=1; i<=NF; i++) if ($1 % 15 != 0) { printf("%s ", $1) } }' | awk '{sub(/[ \t]+$/, "")}1')"

multiple_of_5=$(seq 5 5 100)
multiple_of_5_without_multiple_15="$(echo "$multiple_of_5" | awk '{for (i=1; i<=NF; i++) if ($1 % 15 != 0) { printf("%s ", $1) } }' | awk '{sub(/[ \t]+$/, "")}1')"

multiple_of_15=$(seq 15 15 100)

testTemplate "3の倍数且つ15の倍数を除いた数でFizzを返すかどうか" "$multiple_of_3_without_multiple_15" "Fizz"
testTemplate "5の倍数且つ15の倍数を除いた数でBuzzを返すかどうか" "$multiple_of_5_without_multiple_15" "Buzz"
testTemplate "15の倍数でFizzBuzzを返すかどうか" "$multiple_of_15" "FizzBuzz"

