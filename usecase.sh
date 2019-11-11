#!/bin/bash
read -p "Enter value of a : " a 
read -p "Enter value of b : " b
read -p "Enter value of c : " c

ans=$((a+b*c))
echo "$a + $b *$c = $ans"
