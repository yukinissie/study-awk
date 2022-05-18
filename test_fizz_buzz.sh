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

test 1      = $(echo 1 | ./fizz_buzz.awk); printResult $?
test 2      = $(echo 2 | ./fizz_buzz.awk); printResult $?
test "Fizz" = $(echo 3 | ./fizz_buzz.awk); printResult $?
test 4      = $(echo 4 | ./fizz_buzz.awk); printResult $?
test "Buzz" = $(echo 5 | ./fizz_buzz.awk); printResult $?
test "Fizz" = $(echo 6 | ./fizz_buzz.awk); printResult $?
test 7      = $(echo 7 | ./fizz_buzz.awk); printResult $?
test 8      = $(echo 8 | ./fizz_buzz.awk); printResult $?
test "Fizz" = $(echo 9 | ./fizz_buzz.awk); printResult $?
test "Buzz" = $(echo 10 | ./fizz_buzz.awk); printResult $?
test 11     = $(echo 11 | ./fizz_buzz.awk); printResult $?
test "Fizz" = $(echo 12 | ./fizz_buzz.awk); printResult $?
test 13     = $(echo 13 | ./fizz_buzz.awk); printResult $?
test 14     = $(echo 14 | ./fizz_buzz.awk); printResult $?
test "FizzBuzz" = $(echo 15 | ./fizz_buzz.awk); printResult $?
