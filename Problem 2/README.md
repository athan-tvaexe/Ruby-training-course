# Problem 2: Sum Array Demo

This project demonstrates how to calculate the sum of an array of numbers passed as a command-line argument in a Ruby program.

## Goal

The goal is to show how a program can accept an array of numbers as input, process it, and calculate the sum.

## How to Code

The Ruby script `Solution.rb` is designed to calculate the sum of an array of numbers passed as a command-line argument. Here's how it works:

1. **Define the Method**:

   - The `sum_array` method takes an array of numbers as input and calculates the sum using Ruby's `sum` method.

   ```ruby
   def sum_array(numbers)
     sum = numbers.sum
     puts "Sum: #{sum}"
   end
   ```

2. **Access Command-Line Arguments**:

   - The script uses Ruby's `ARGV` array to access the command-line argument passed by the user.
   - The argument is evaluated into an array using `eval(ARGV[0])`.

   ```ruby
   sum_array(eval(ARGV[0]))
   ```

3. **Output the Result**:
   - The script prints the sum of the array to the terminal.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 2"
   ```
3. Run the Ruby script with an array of numbers as a command-line argument:
   ```bash
   ruby Solution.rb "[1, 2, 3, 4, 5]"
   ```

### Explanation of the Command

- `cd "Problem 2"`: Changes the current directory to the `Problem 2` folder.
- `ruby Solution.rb "[1, 2, 3, 4, 5]"`: Executes the Ruby script `Solution.rb` and passes the array `[1, 2, 3, 4, 5]` as a command-line argument.

## Result

Upon running the command, the program will output the following to the terminal:

```
Sum: 15
```

The script accesses the command-line argument through Ruby's special `ARGV` array. The argument is evaluated into an array using `eval(ARGV[0])`, and the sum of the array is calculated and printed.
