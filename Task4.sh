grep '^Xerox' sample.tsv | awk -v OFS='\t' '{print $1, NR}' | sort -k1,1 > output.tsv && cat output.tsv | tee >(wc -l) | tee >(sha1sum) | tail -5

#used grep to get item name starting with XEROX
#used awk to get first column 
#sort is used to sort the first column
#output is saved to output.tsv file

