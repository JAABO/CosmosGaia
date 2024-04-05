def sort_lines(input_file):
    try:
        # Read input text from file
        with open(input_file, 'r') as file:
            input_text = file.read()

        # Split input text into an array of lines
        lines = input_text.split("\n")
        
        # Sort lines in alphabetical order
        sorted_lines = sorted(lines)

        # Join line array into a string
        sorted_text = "\n".join(sorted_lines)
        
        return sorted_text

    except FileNotFoundError:
        print(f"Error: Input file '{input_file}' not found.")
        return None

# Example usage:
input_file = "input.txt"
sorted_text = sort_lines(input_file)
if sorted_text:
    print(sorted_text)
