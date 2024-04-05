return input.split(/\r?\n/) // Split input text into an array of lines
    .sort() // Sort lines in alphabetical order
    .join("\n"); // Join line array into a string