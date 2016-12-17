#!/bin/bash
#echo "a" >> temp.txt

# run command to get temperature in Celsius
PR=$(sudo pcsensor -c)

# control echo
echo "temp $PR" >> /home/pi/projekt/OPS/temp.txt

# run connect.py with temperature as arg
/home/pi/projekt/OPS/connect.py "$PR"
