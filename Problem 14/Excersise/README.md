# Multi-Threaded Prime Number Generator

This project implements a high-performance prime number generator in Ruby. It uses a multi-threaded **Segmented Sieve of Eratosthenes** algorithm to efficiently find all prime numbers up to a very large limit (e.g., 100,000,000) and save them to a file.

## Goal

The goal of this project is to demonstrate an advanced, computationally-intensive task solved with modern programming techniques. It showcases:

- **Advanced Algorithms**: Implementation of the Segmented Sieve of Eratosthenes, which is highly memory-efficient for large numbers.
- **Parallel Processing**: The use of Ruby's `Thread` and `Mutex` to parallelize the workload across multiple CPU cores, significantly reducing execution time.
- **File I/O**: Efficiently writing a large volume of results to a file from multiple concurrent threads.

## How to Run

The script is self-contained and can be run directly from the command line.

1.  Navigate to the project directory in your terminal:

    ```bash
    cd "Problem 14/Excersise"
    ```

2.  Execute the script using the Ruby interpreter:

    ```bash
    ruby Solution.rb
    ```

3.  You can modify the `total_numbers` and `num_threads` variables at the bottom of `Solution.rb` to change the upper limit and concurrency level.

## Example Output

When you run the script, you will see progress messages in your console:

```
Starting to find primes up to 100000000...
Results will be saved to 'primes_100000000.txt'.
Completed in 15.234567 seconds.
```

The primary output is the text file `primes_100000000.txt`, which will contain a list of all prime numbers found, with one prime per line.

## Code Explanation

The script is divided into two main parts:

### `simple_sieve(limit)`

This function implements the classic Sieve of Eratosthenes. It's used once at the beginning to generate a list of "base primes" up to the square root of the target number (`n`). These base primes are all that's needed to sieve the rest of the number range.

### `segmented_sieve(n, num_threads, file_path)`

This is the core of the program. It performs the following steps:

1.  **Generate Base Primes**: Calls `simple_sieve` to get the initial list of primes.
2.  **Divide and Conquer**: The number range from `sqrt(n)` to `n` is divided into smaller, manageable chunks called "segments" (e.g., of size 100,000).
3.  **Parallel Sieving**: A new thread is created to process each segment. This allows multiple segments to be sieved for primes concurrently.
    - Each thread creates a boolean array representing the numbers in its segment.
    - It then uses the `base_primes` to mark off non-prime numbers within its segment.
4.  **Thread-Safe File Writing**: After a thread finds the primes in its segment, it needs to write them to the output file. A `Mutex` is used to ensure that only one thread can write to the file at a time, preventing the output from becoming corrupted.
5.  **Synchronization**: The main program waits for all threads to complete their work using `threads.each(&:join)` before printing the final "Completed" message.

## Performance Considerations

- **Memory Efficiency**: The segmented approach is highly memory-efficient. Instead of creating a massive boolean array for all numbers up to `n`, it only needs to hold one small segment in memory at a time.
- **CPU Cache**: The `segment_size` is a crucial performance parameter. A size that fits well within the CPU's L2 cache (e.g., 128KB to 512KB) often yields the best results by minimizing slow main memory access.
- **Concurrency**: The use of threads allows the program to take full advantage of multi-core processors, turning a long sequential task into a much faster parallel one.

## Further Improvements

- **Thread Pooling**: Instead of creating a new thread for every segment (which has overhead), a fixed-size thread pool could be implemented to reuse a set number of worker threads.
- **Command-Line Arguments**: The `total_numbers` and `num_threads` could be made configurable via command-line arguments (`ARGV`) for greater flexibility.

## Result
Starting to find primes up to 100000000...
Results will be saved to 'primes_100000000.txt'.
Completed in 22.676111 seconds.