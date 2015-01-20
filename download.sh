#!/bin/bash

p='p'
for ((i=1;i<81;i++))
do
	x=$(sed -n "$i$p" list.txt)
	wget http://starkana.com/download/manga/$x	
done
rm temp.txt
rm list.txt
