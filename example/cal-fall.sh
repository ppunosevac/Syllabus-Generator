#!/bin/sh
for i in August
do 
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/,/' > $i.crap 
done
for i in September
do
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/ \\\\ /' > $i.crap > $i.crap
done
paste August.crap September.crap > aux
awk -f cal-Aug-Sep.awk aux > cal1.info
rm *.crap aux

for i in October
do 
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/,/' > $i.crap 
done
for i in November
do
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/ \\\\ /' > $i.crap > $i.crap
done
paste October.crap November.crap > aux
awk -f cal-Oct-Nov.awk aux > cal2.info
rm *.crap aux
