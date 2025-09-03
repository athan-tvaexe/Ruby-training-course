# Problem 1: Command Line Argument Demo

This file demonstrates how to pass and use a command-line argument in a simple Ruby program.

## Goal

The goal is to show how a program can accept and process data provided directly by the user from the terminal. The provided Ruby script `Solution.rb` will take a single argument and incorporate it into a greeting message.

## How to Run

1. Open your terminal.
2. Navigate to the file directory:
   ```bash
   cd "Problem 1"
   ```
3. Run the Ruby script with a command-line argument:
   ```bash
   ruby Solution.rb 'world'
   ```

### Explanation of the Command

- `cd "Problem 1"`: Changes the current directory to the `Problem 1` folder.
- `&&`: Ensures the second command runs only if the first command is successful.
- `ruby Solution.rb 'world'`: Executes the Ruby script `Solution.rb` and passes the string `'world'` as a command-line argument.

## Result

Upon running the command, the program will output the following to the terminal:

```
Hello, world!
```

The script accesses the command-line argument through Ruby's special `ARGV` array. The argument `'world'` is the first element, `ARGV[0]`, which the script uses to complete the greeting message.
