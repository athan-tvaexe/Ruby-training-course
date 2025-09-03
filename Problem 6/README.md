# Problem 6: Palindrome Checker

This project demonstrates how to check if a given string is a palindrome using Ruby.

## Goal

The goal is to practice string manipulation and decision-making in Ruby by implementing logic to determine whether a string is a palindrome. A palindrome is a word, phrase, or sequence that reads the same backward as forward (ignoring case).

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 6"
   ```
3. Run the Ruby script with a string as an argument:
   ```bash
   ruby Solution.rb "madam"
   ```

### Explanation of the Code

- **String Manipulation**: The program converts the input string to lowercase using `downcase` to ensure the comparison is case-insensitive.
- **Palindrome Check**: The program checks if the string is equal to its reverse using `str.reverse`.
- **Command-Line Argument**: The program uses `ARGV[0]` to access the string provided as an argument.

### Example Output

For the command:

```bash
ruby Solution.rb "madam"
```

The output will be:

```
true
```

For the command:

```bash
ruby Solution.rb "hello"
```

The output will be:

```
false
```

If no argument is provided:

```
Please provide a string
```

## Further

This program is a simple implementation of a palindrome checker and can be extended to ignore spaces, punctuation, or special characters for more complex use cases.

