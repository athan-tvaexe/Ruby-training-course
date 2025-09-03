# Problem 4: Even or Odd Detector

This project helps you review the `if-else` syntax in Ruby while also practicing loops by allowing multiple arguments to be passed to the program.

## Goal

The goal is to determine whether each number provided as a command-line argument is even or odd. The program demonstrates the use of `if-else` for decision-making and loops to process multiple inputs.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
    ```bash
    cd "Problem 4"
    ```
3. Run the Ruby script with one or more numbers as arguments:
    ```bash
    ruby Solution.rb 2 5 8
    ```

### Explanation of the Code

* **`if-else` Syntax**: The program uses `if-else` to check if a number is even (`num % 2 == 0`) or odd.
* **Looping Through Arguments**: The program uses `ARGV.each` to iterate through all the arguments passed to the script.
* **Input Validation**: The program ensures that at least one argument is provided. If no arguments are passed, it will prompt the user to provide a number and exit.

### Example Output

For the command: `ruby Solution.rb 2 5 8`

The output will be:
```
Even
Odd
Even
```

If no arguments are provided:
```
Please provide a number
```