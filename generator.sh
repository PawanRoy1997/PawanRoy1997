#!/bin/bash

# Let's generate date field first
# index of day of the week sunday = 0 & sunday = 7

FILE="README.md"

rm "./$FILE"

DAY="$(date +'%u')"
case "$DAY" in
    "0") DAY_OF_WEEK='Sunday :sunglasses:';;
    "1") DAY_OF_WEEK='Monday :scream:';;
    "2") DAY_OF_WEEK='Tuesday :tired_face:';;
    "3") DAY_OF_WEEK='Wednesday :astonished:';;
    "4") DAY_OF_WEEK='Thurday :relieved:';;
    "5") DAY_OF_WEEK='Friday :smiley:';;
    "6") DAY_OF_WEEK='Saturday :partying_face:';;
    "7") DAY_OF_WEEK='Sunday :sunglasses:';;
esac

DATE="$(date +'%d/%m/%y')"

MONTH="$(date +'%m')"
case "$MONTH" in
    "01") MONTH_OF_YEAR="Jan";;
    "02") MONTH_OF_YEAR="Feb";;
    "03") MONTH_OF_YEAR="Mar";;
    "04") MONTH_OF_YEAR="Apr";;
    "05") MONTH_OF_YEAR="May";;
    "06") MONTH_OF_YEAR="Jun";;
    "07") MONTH_OF_YEAR="Jul";;
    "08") MONTH_OF_YEAR="Aug";;
    "09") MONTH_OF_YEAR="Sep";;
    "10") MONTH_OF_YEAR="Oct";;
    "11") MONTH_OF_YEAR="Nov";;
    "12") MONTH_OF_YEAR="Dec";;
esac

DAY_OF_MONTH="$(date +'%d')"
YEAR="$(date +'%Y')"

DAY_PREF="th"
case "$DAY_OF_MONTH" in
    "01")DAY_PREF="st";;
    "02")DAY_PREF="nd";;
    "03")DAY_PREF="rd";;
esac

echo "<p align=\"right\">$DAY_OF_WEEK</p>">>"$FILE"
echo "<p align=\"right\">$DAY_OF_MONTH$DAY_PREF $MONTH_OF_YEAR $YEAR</p>">>"$FILE"
cat content.md >> "$FILE"
