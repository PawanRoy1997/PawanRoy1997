#!/bin/bash

# Let's generate date field first
# index of day of the week sunday = 0 & sunday = 7

FILE="README.md"

rm "./$FILE"

DAY="$(date +'%u')"
case "$DAY" in
    "0") DAY_OF_WEEK='Sunday';;
    "1") DAY_OF_WEEK='Monday';;
    "2") DAY_OF_WEEK='Tuesday';;
    "3") DAY_OF_WEEK='Wednesday';;
    "4") DAY_OF_WEEK='Thurday';;
    "5") DAY_OF_WEEK='Friday';;
    "6") DAY_OF_WEEK='Saturday';;
    "7") DAY_OF_WEEK='Sunday';;
esac
case "$DAY" in
    "0") Emoji_OF_WEEK=' :sunglasses:';;
    "1") Emoji_OF_WEEK=' :scream:';;
    "2") Emoji_OF_WEEK=' :tired_face:';;
    "3") Emoji_OF_WEEK=' :astonished:';;
    "4") Emoji_OF_WEEK=' :relieved:';;
    "5") Emoji_OF_WEEK=' :smiley:';;
    "6") Emoji_OF_WEEK=' :partying_face:';;
    "7") Emoji_OF_WEEK=' :sunglasses:';;
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

echo "<h2 align=\"right\" style=\"font-size:26px\">$DAY_OF_WEEK $Emoji_OF_WEEK</h2>">>"$FILE"
echo "<h3 align=\"right\" style=\"font-size:22px\">$DAY_OF_MONTH$DAY_PREF $MONTH_OF_YEAR $YEAR</h3>">>"$FILE"
echo "<img src="https:\/\/1.bp.blogspot.com\/-7A4WynwLsMw\/XbBpCXG8fHI\/AAAAAAAAMt4\/uOa1bpLskYgrwGbllhSu2SDj_Mig8SXJQCLcBGAsYHQ\/s1600\/2000_600px.gif" width="100%"/>
"$FILE"
cat content.md >> "$FILE"
