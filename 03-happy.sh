#!/bin/sh

# Ask if the user is happy
echo "You are happy?"
read answer

# Respond based on the user's happiness
if [ "$answer" = "yes" ]; then
   echo "hmmmm gooood yess you are happy"
else
   echo "Still Smile c:"
fi

# Parallel Universe Exercise: Write a script that prints whether today is
# the weekend or not, with extra fun features.

# Get the current day of the week
day_of_week=$(date +%A)

# Check if today is Saturday or Sunday
if [ "$day_of_week" = "Saturday" ] || [ "$day_of_week" = "Sunday" ]; then
   echo "Today is the weekend! Yay!"
   
   # Add some randomness for fun
   random_response=$((RANDOM % 3))
   case $random_response in
      0)
         echo "Go enjoy some fun activities! It's the weekend!"
         ;;
      1)
         echo "Relax and enjoy your time off!"
         ;;
      2)
         echo "It's the perfect day to binge-watch your favorite series!"
         ;;
   esac
else
   echo "Today is a weekday. Keep working!"
   
   # Add a playful weekday message
   weekday_response=$((RANDOM % 2))
   case $weekday_response in
      0)
         echo "But hey, only a few more days until the weekend!"
         ;;
      1)
         echo "Stay productive, you'll get there!"
         ;;
   esac
fi
