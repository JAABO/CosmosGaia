# input.txt contains the unsorted words

# Split input text into an array of lines
lines=$(grep -Eo '.+' input.txt)

# Sort lines in alphabetical order
sorted_lines=$(echo "$lines" | sort)

# Join line array into a string
result=$(echo "$sorted_lines" | awk 'ORS="\n"')

echo "$result"
