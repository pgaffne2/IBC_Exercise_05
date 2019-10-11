#Usage: bash script.sh wages.csv

#takes wages.csv as argument, replaces extra space after word female with one space, sorts each line using the second column, and redirects to a new file                          
    

cat $1 | sed 's/female\s/female /' | grep "female" | sort -n -k 2 | awk '{print $1,$2}' > sorted_file.csv
                                                                                                                      	
#takes wages.csv as argument, deletes entries on females, replaces extra space after word male with one space, sorts each line using the second column, and appends to file        
                                                    
cat $1 | sed '/female/d' | sed 's/male\s/male /' | grep "male" | sort -n -k 2 | awk '{print $1,$2}' >> sorted_file.csv
