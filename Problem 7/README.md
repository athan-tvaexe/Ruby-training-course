# Problem 7: Fibonacci Sequence Generator

This project demonstrates how to generate a Fibonacci sequence of a given length using Ruby.

## Goal

The goal is to practice loops, conditionals, and array manipulation in Ruby by implementing logic to generate the Fibonacci sequence.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 7"
   ```
3. Run the Ruby script with a number as an argument:
   ```bash
   ruby Solution.rb 10
   ```

### Explanation of the Code

- **Fibonacci Logic**: The program generates the Fibonacci sequence by starting with `[1, 1]` and repeatedly adding the last two numbers in the sequence.
- **Command-Line Argument**: The program uses `ARGV[0]` to access the number provided as an argument.
- **Input Validation**: If no argument is provided, the program prompts the user to provide a number and exits.

### Example Output

For the command:

```bash
ruby Solution.rb 10
```

The output will be:

```
[1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
```

If no argument is provided:

```
Please provide a number
```

If argument is wrong format:

```
"Please provide a valid positive integer"
```



## Further

This program can be extended to handle invalid inputs (e.g., non-integer values) or to generate the sequence in different formats (e.g., as a string or JSON).
