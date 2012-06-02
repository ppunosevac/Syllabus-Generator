#!/bin/sh
for i in January
do 
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/,/' > $i.crap 
done
for i in February
do
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/ \\\\ /' > $i.crap > $i.crap
done
paste January.crap February.crap > aux
awk -f cal-Jan-Feb.awk aux > cal1.info
rm *.crap aux

for i in March
do 
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/,/' > $i.crap 
done
for i in April
do
    cal  $i |sed -e '1n;s/\(..\)\(.\)/\1,\2/g'| \
    sed 's/$/ \\\\ /' > $i.crap > $i.crap
done
paste March.crap April.crap > aux
awk -f cal-Mar-Apr.awk aux > cal2.info
rm *.crap aux
