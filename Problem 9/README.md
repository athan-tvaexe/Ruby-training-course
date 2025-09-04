# Problem 9: Word Frequency Counter

This project demonstrates how to solve a simple word counting problem using Ruby's `Hash` and `gsub` methods.

## Goal

The goal is to count the frequency of each word in a given string and display the results.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 9"
   ```
3. Run the Ruby script with a string as an argument:
   ```bash
   ruby Solution.rb "Hello, world. Hello everyone."
   ```

### Explanation of the Code

- The program uses the `gsub` method to replace all punctuation (e.g., `,`, `.`) with spaces.
- The string is then split into words using the `split` method.
- A hash is used to count the frequency of each word, with `Hash.new(0)` ensuring that the default value for any key is `0`.

### Example Output

For the command:

```bash
ruby Solution.rb "Hello, world. Hello everyone."
```

The output will be:

```
{"Hello"=>2, "world"=>1, "everyone"=>1}
```

If no argument is provided:

```
Please provide a string
```

## Further
