#!/bin/sh

HEYJDIR=/home/pi/mycroft-precise/heyjarvis
WAKEDIR=/tmp/mycroft_wake_words

for FILE in $WAKEDIR/*;
 do 
    echo "$FILE"; 
    aplay $FILE;
    echo "\n Would you like to (I)gnore (D)elete (W)ake work (N)ot Wake Word this sample?"
    read ans
    if [ "$ans" = "D" ]; then
        echo "DELETING $FILE"
        rm $FILE
    elif [ "$ans" = "W" ]; then
        echo "WAKE WORD - Adding to $HEYJDIR/wake-word/"
        mv $FILE $HEYJDIR/wake-word/
    elif [ "$ans" = "N" ]; then
        echo "NOT WAKE WORD - Adding to $HEYJDIR/not-wake-word/"
        mv $FILE $HEYJDIR/not-wake-word/
    else
        echo "Ignoring $FILE"
    fi
done