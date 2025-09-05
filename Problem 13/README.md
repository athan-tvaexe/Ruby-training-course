# Simple File Processing

This project provides simple Ruby methods for basic file processing tasks: counting the number of lines in a file and searching for lines that contain a specific pattern.

## Goal

The goal of this project is to demonstrate fundamental file I/O operations in Ruby. It showcases how to:

- Open and read a file securely using a block (`File.open`).
- Iterate through a file line by line.
- Implement a line-counting function.
- Implement a simple `grep`-like function to find matching lines.

## Code Explanation

The `Solution.rb` file contains two main methods:

- **`count_lines(file_path)`**: This function takes a file path as an argument, opens the file, reads it line by line, and returns the total number of lines.

- **`grep(pattern, file_path)`**: This function searches for a given `pattern` (string) within a file. It reads the file line by line and returns an array of all lines that include the pattern.

## How to Use

The `Solution.rb` file defines methods but is not a runnable script on its own. To use these methods, you need to `require` the file in another Ruby script.

1.  **Create a sample file** to work with. For example, create a file named `sample.txt`:

    ```text
    Hello world
    This is a test file.
    Hello Ruby world.
    Another line.
    ```

2.  **Create a script to run the methods**, for example, `main.rb`:

    ```ruby
    require_relative 'Solution.rb'

    file_path = 'sample.txt'

    # Example 1: Count lines in the file
    puts "Counting lines in '#{file_path}'..."
    line_count = count_lines(file_path)
    puts "Total lines: #{line_count}"
    puts "---"

    # Example 2: Search for a pattern in the file
    pattern = 'world'
    puts "Searching for lines containing '#{pattern}' in '#{file_path}'..."
    matches = grep(pattern, file_path)
    puts "Found matches:"
    puts matches
    ```

3.  **Run the script** from your terminal:
    ```bash
    ruby main.rb
    ```

## Example Output

Running the `main.rb` script from the previous step will produce the following output:

```
Counting lines in 'sample.txt'...
Total lines: 4
---
Searching for lines containing 'world' in 'sample.txt'...
Found matches:
Hello world
Hello Ruby world.
```

## Further Improvements

- **Regular Expression Support**: The `grep` function could be enhanced to accept regular expressions for more powerful pattern matching, instead of just simple string inclusion.
- **Command-Line Interface**: A command-line interface could be built to allow users to run these functions directly from the terminal, similar to the standard `wc -l` and `grep` utilities.
