#Q2a
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l
echo 458

#Q2b
sed 's/Sherlock/Holmes/g' sherlockholmes.txt | grep -c "Holmes"

#Q2c
sed 's/Sherlok/Holmes/g' sherlockholmes.txt | sed 's/Holmes/&\n/g' | grep -c "Holmes"
echo 459

#Q2d
sed 's/\b[A-Z][a-zA-Z]\{1,\} [A-Z][a-zA-Z]\{1,\}\b/Daniel Zuckerman/g' sherlockholmes.txt

#Q2e
sed -E 's/\(/\[/g' sherlockholmes.txt | sed -E 's/\)/\]/g'
