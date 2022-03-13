#!/bin/bash

readonly HOLIDAY=1
readonly WEEKDAY=2

# In case of holidays
grep `date "+%Y/%-m/%-d"`, holidays.csv > /dev/null && date_of_today=$HOLIDAY

# In case of weekdays
grep `date "+%Y/%-m/%-d"`, holidays.csv > /dev/null || date_of_today=$WEEKDAY

if [ $date_of_today -eq $WEEKDAY ]; then
 echo "It's a weekday today"
else
 echo "It's a holiday today"
fi
