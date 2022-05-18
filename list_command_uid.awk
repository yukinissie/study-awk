#!/usr/bin/awk -f
BEGIN { print "Let's start!" }
{ print $1, $8 }
END { print "Finish!!" }

