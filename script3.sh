#finds difference between lowest wage for ppl with 16 years education and 12 years education
echo "Effect of graduating college on minimum wage:"

#finds lowest wage for someone with 16 years education
val1=$(cat wages.csv | cut -d , -f 3-4 | grep -E  "16\," | sort -n | head -n 1 | cut -d , -f 2)

#finds lowest wage for someone with 12 years education
val2=$(cat wages.csv | cut -d , -f 3-4 | grep -E  "12\," | sort -n | head -n 1 | cut -d , -f 2)

#subtracts the two values
echo "$val1-$val2" | bc
