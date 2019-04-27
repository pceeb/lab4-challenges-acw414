1. 
echo "Cats eat 5 billion birds a year" | sed 's/Cats eat //' | sed 's/birds a year/5 billion!/' | sed 's/5 billion/5 billion?/'

2.
echo 12345abcde678910fghij | sed 's/\(12345\)\(abcde\)/\2\1/' | sed 's/\(12345678910\)\(fghij\)/\2\1/'

3. 
echo 12345abcde678910fghij | sed 's/\(12345\)\(abcde\)/\2\1/' | sed 's/\(12345678910\)\(fghij\)/\2\1/'| sed 's/[A-Za-z][A-Za-z]/&'$'\t/g' | sed 's/[0-9][0-9]/&'$'\t/g'

4.
echo 12345abcde678910fghij | sed 's/[0-9]//g' | sed 's/[A-Za-z][A-Za-z]/&'$'\t/g'
