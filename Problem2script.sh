cat wages.csv | grep -v gender | sort -k 4 -t , -n | echo "This is the lowest earner: $(head -n 1)"

cat wages.csv | grep -v gender | sort -k 4 -t , -n | echo "This is the highest earner: $(tail -n 1)"

cat wages.csv | grep -v gender | sort -k 4 -t , -n | tail -n 10 | grep female | echo "There are $(wc -l) females in the top 10 earners."