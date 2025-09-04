# Problem 11: Number Guessing Game

This project demonstrates a simple number guessing game implemented in Ruby. The program generates a random number between 1 and 100, and the user has to guess the number with hints provided after each guess.

## Goal

The goal is to practice loops, conditionals, and user input handling in Ruby by implementing a fun and interactive game.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 11"
   ```
3. Run the Ruby script:
   ```bash
   ruby Solution.rb
   ```

### Explanation of the Code

- **Random Number Generation**: The program uses `rand(1..100)` to generate a random number between 1 and 100.
- **User Input**: The program uses `gets.chomp.to_i` to read the user's guess and convert it to an integer.
- **Hints**: After each guess, the program provides feedback:
  - "Too low! Try again." if the guess is less than the number.
  - "Too high! Try again." if the guess is greater than the number.
- **Loop**: The program uses a `while` loop to keep asking for guesses until the user guesses the correct number.

### Example Output

When you run the program, it will look like this:

```
Guess a number between 1 and 100
50
Too low! Try again.
75
Too high! Try again.
63
Congratulations! You guessed the number 63 correctly.
```

## Further

This program can be extended to include additional features such as:

- Limiting the number of guesses.
- Adding difficulty levels (e.g., smaller or larger ranges).
- Keeping track of the number of attempts and displaying it at the end.
