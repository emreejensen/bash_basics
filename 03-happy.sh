#!/bin/sh

echo "You are happy?"
read answer

if [ "$answer" = "yes" ]; then
   echo "hmmmm gooood yess you are happy"
else
   echo "Still Smile c:"
fi

# here are the other string comparison operators
# != , -n (not an empty string) , -z (an empty string)

# exercise: write a script that prints whether today is
# the weekend or not

# Get the current day of the week
day_of_week=$(date +%A)

# Check if today is Saturday or Sunday
if [ "$day_of_week" = "Saturday" ] || [ "$day_of_week" = "Sunday" ]; then
   echo "Today is the weekend! Yay!"
else
   echo "Today is a weekday. Keep working!"
fi
