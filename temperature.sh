#!/bin/bash
#echo "a" >> temp.txt

# run command to get temperature in Celsius
PR=$(sudo pcsensor -c)

# control echo
echo "temp $PR" >> /home/fanny/share/codes/Bash/OPS/temp.txt

# run connect.py with temperature as arg
/home/fanny/share/codes/Bash/OPS/connect.py "$PR"
