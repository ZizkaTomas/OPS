#!/bin/bash

TEMPERATURE="$(( ( RANDOM % 100 )  + 1 ))"
./connect.py "$TEMPERATURE"
