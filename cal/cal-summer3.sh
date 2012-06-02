#!/bin/sh
for i in June
do 
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/,/' > $i.crap 
done
for i in July
do
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/ \\\\ /' > $i.crap > $i.crap
done
paste June.crap July.crap > aux
awk -f cal-Jun-Jul.awk aux > cal.dat
rm *.crap aux
