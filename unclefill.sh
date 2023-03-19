# Define the input file and output file variables
input_file="${1:-}"
output_file="${2:-}"

# Check if either of the input or output files were passed as command line arguments
if [ -z "$input_file" ] || [ -z "$output_file" ]; then
  # If neither file was passed or only one file was passed, prompt the user to enter both filenames
  read -p "Enter input file: " input_file
  read -p "Enter output file: " output_file
elif [ "$#" -gt 2 ]; then
  # If three or more arguments were passed, output an error message to stderr and exit with status code 1
  echo "Error: too many arguments provided" >&2
  exit 1
fi

# Use a while loop to continuously append the contents of the input file to the output file
while true; do
  # Append the contents of the input file to the output file
  cat "$input_file" >> "$output_file"
done