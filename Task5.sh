stat -c "%U" * | xargs -I {} id -Gn {} | tr ' ' ',' | tr '\n' ',' > output5.tsv && cat output5.tsv

# used the 'stat' command with the '-c' option to print the owner of each file in the current directory.
# used 'xargs' to pass each owner to the 'id -Gn' command, which prints the groups of the owner.
# used tr command to replace all spaces with commas and also to replace new line character with comma.
# saved the output to output5.tsv