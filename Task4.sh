grep '^Xerox' sample.tsv | awk -v OFS='\t' '{print $1, NR}' | sort -k1,1 > output.tsv && cat output.tsv | tee >(wc -l) | tee >(sha1sum) | tail -5

