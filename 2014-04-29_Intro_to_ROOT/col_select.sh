
# Clean the input data file as follows:
#
# replace the legal description column, which contains quoted commas, with XXXX
# replace spaces with underscores
# split on commas and report numeric columns
# remove $ in front of money
# change "false" to 0
# change "true" to 1
cat Assessor_Property_Information.csv | sed 's/"[^"]*"/XXXX/g' | tr " " "_" | awk '{split($0,a,","); print a[1]","a[5]","a[6]","a[7]","a[8]","a[9]","a[10]","a[11]","a[12]","a[13]","a[14]","a[15]","a[21]","a[22]","a[23]","a[28]","a[29]","a[33]","a[34]","a[35]","a[36]","a[37]","a[38]","a[39]","a[40]","a[41]","a[42]","a[43]","a[44]","a[45]","a[46]","a[47]","a[48]","a[49]","a[54]","a[56]","a[58]","a[60]","a[63]","a[65]","a[67]","a[69]","a[71]","a[73]","a[74]","a[75]","a[76]","a[77]}' | sed 's/\$//g' | sed 's/false/0/g' | sed 's/true/1/g'
