# Problem 8: FizzBuzz Generator

This project demonstrates the classic FizzBuzz problem, which is a common programming exercise to practice loops and conditionals in Ruby.

## Goal

The goal is to print numbers from 1 to `n` with the following rules:

- Print "FizzBuzz" for numbers divisible by 15.
- Print "Fizz" for numbers divisible by 3.
- Print "Buzz" for numbers divisible by 5.
- Print the number itself for all other cases.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 8"
   ```
3. Run the Ruby script with a positive integer as an argument:
   ```bash
   ruby Solution.rb 15
   ```

### Explanation of the Code

- **FizzBuzz Logic**: The program uses a loop to iterate through numbers from 1 to `n` and applies the FizzBuzz rules using `if-elsif-else` statements.
- **Input Validation**: The program ensures that the input is a valid positive integer. If the input is invalid or missing, it prompts the user and exits.

### Example Output

For the command:

```bash
ruby Solution.rb 15
```

The output will be:

```
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
```

If no argument is provided:

```
Please provide a number
```

If the argument is not a valid positive integer:

```
Please provide a valid positive integer
```

## Further

This program is a simple implementation of the FizzBuzz problem and can be extended to handle custom rules or ranges.
