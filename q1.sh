#Q1a
awk 'END {print NR}' aliceinwonderland.txt | tail -n1
echo 3325

#Q1b
awk '/Alice/ {counter++} END {print counter}' aliceinwonderland.txt 
echo 393

#Q1c
awk '{count += gsub(/ Alice /, "")} END {print count}' aliceinwonderland.txt
echo 

#Q1d
awk '{if(length($0) > max) {max = length($0); longest_line = $0}} END {print longest_line}' aliceinwonderland.txt 

#Q1e
grep -oE '\b\w+\b' aliceinwonderland.txt | awk '{a[$1]++} END {for (k in a) print a[k], k}' | sort -nr | head -n5
