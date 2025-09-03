# Problem 5: Maximum Finder

This project demonstrates how to find the maximum value among numbers using Ruby. It includes two solutions:

1. **`Solution.rb`**: Finds the maximum of exactly three numbers.
2. **`ExtendedSolution.rb`**: Finds the maximum of an arbitrary number of numbers.

## Goal

The goal is to practice working with command-line arguments and decision-making in Ruby by implementing logic to find the maximum value.

## How to Run

### Running `Solution.rb`

1. Open your terminal.
2. Navigate to the project directory:
    ```bash
    cd "Problem 5"
    ```
3. Run the Ruby script with exactly three numbers as arguments:
    ```bash
    ruby Solution.rb 3 7 5
    ```

#### Example Output

For the command:
```bash
ruby Solution.rb 3 7 5
```

The output will be:
```
Max: 7
```

If fewer or more than three arguments are provided:
```
Please provide exactly three numbers
```

---

### Running `ExtendedSolution.rb`

1. Open your terminal.
2. Navigate to the project directory:
    ```bash
    cd "Problem 5"
    ```
3. Run the Ruby script with any number of arguments:
    ```bash
    ruby ExtendedSolution.rb 3 7 5 10 2
    ```

#### Example Output

For the command:
```bash
ruby ExtendedSolution.rb 3 7 5 10 2
```

The output will be:
```
10
```

If no arguments are provided:
```
```