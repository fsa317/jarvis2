#!/bin/sh

PRECISEDIR=../mycroft-precise


precise-convert $PRECISEDIR/hey-jarvis.net
cp $PRECISEDIR/hey-jarvis.pb* /home/pi/.mycroft/precise/
cp $PRECISEDIR/hey-jarvis.pb* ./heyjarvis_backup