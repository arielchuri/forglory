

#!/bin/bash

# Input markdown file containing file names
markdown_file="contents.md"
# Output file to concatenate into
output_file="concatenated_output.md"

# Ensure the output file is empty before starting
> "$output_file"

# Read each line from the markdown file
while read -r file_path; do
    if [[ -f "$file_path" ]]; then
        # Append the file contents to the output file
        cat "$file_path" >> "$output_file"
        echo -e "\n" >> "$output_file" # Add a newline between file contents
    else
        echo "Warning: File '$file_path' not found."
    fi
done < "$markdown_file"

echo "Files concatenated into $output_file"
