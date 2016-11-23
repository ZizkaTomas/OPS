#!/bin/bash
#echo "a" >> temp.txt
PR=$(sudo pcsensor -c)

echo "temp $PR" >> /home/fanny/share/codes/Bash/OPS/temp.txt

/home/fanny/share/codes/Bash/OPS/connect.py "$PR"
