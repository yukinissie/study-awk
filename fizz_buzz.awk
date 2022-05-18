#!/usr/bin/awk -f
{
  if ($1 % 15 == 0) {
    print "FizzBuzz"
  }
  else if ($1 % 3 == 0) {
    print "Fizz"
  }
  else if ($1 % 5 == 0) {
    print "Buzz"
  }
  else {
    print $1
  }
}

