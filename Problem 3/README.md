# Problem 3: Reverse String Demo

This project demonstrates how to reverse a string passed as a command-line argument in a Ruby program.

## Goal

The goal is to show how a program can accept a string as input, process it, and output the reversed string.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 3"
   ```
3. Run the Ruby script with a string as a command-line argument:
   ```bash
   ruby Solution.rb "hello"
   ```

### Explanation of the Command

- `cd "Problem 3"`: Changes the current directory to the `Problem 3` folder.
- `ruby Solution.rb "hello"`: Executes the Ruby script `Solution.rb` and passes the string `"hello"` as a command-line argument.

## Result

Upon running the command, the program will output the following to the terminal:

```
olleh
```

The script accesses the command-line argument through Ruby's special `ARGV` array. The argument is reversed using Ruby's `reverse` method and printed to the terminal.

## Further
If the command-line argument is a number, Ruby treats it as a string by default. The program will reverse the digits of the number as if it were a string. For example:

```bash
ruby Solution.rb 12345
```

The output will be:

```
54321
```