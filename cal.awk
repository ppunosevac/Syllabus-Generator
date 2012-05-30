#!/usr/bin/awk -f
BEGIN{FS=",";OFS="&"}
NR>2 && NR<8 {
print "\\ti{"$2"}","\\ti{"$3"}","\\ti{"$4"}","\\ti{"$5"}","\\ti{"$6"}", "\\ti{"$9"}","\\ti{"$10"}","\\ti{"$11"}","\\ti{"$12"}","\\ti{"$13"}\\\\" 

if (NR==3) print "\\WkOneJunJul"
if (NR==4) print "\\WkTwoJunJul"
if (NR==5) print "\\WkTreJunJul"
if (NR==6) print "\\WkForJunJul"
if (NR==7) print "\\WkFivJunJul"
print  "\\hline"
}
