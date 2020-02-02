#!/bin/sh

# Date Variations
date +"%v"
# Prints: DD-MM-YYYY

echo date +"%m-%d-%y"
# Prints: MM-DD-YY

echo date +"%x"
# Prints: MM/DD/YYYY

echo date +"%F"
# Prints: YYYY-MM-DD


# Time Variations

date +"%T"
# Prints: HH:MM:SS

date +"%r"
# Prints: HH:MM:SS A/P M

date +%s
# Prints: epoch time
