# Ruby Multithreading Demonstration

This project provides a simple, clear example of multithreading in Ruby. It shows how to create multiple threads that run concurrently and how to manage their execution from the main thread.

## Goal

The primary goal is to illustrate the fundamental concepts of multithreading:

- Creating and running new threads in parallel using `Thread.new`.
- Simulating work within a thread using `sleep`.
- Waiting for threads to complete their tasks using `Thread#join` before allowing the main program to exit.

## Code Explanation (`Example.ruby`)

The script demonstrates a common multithreading workflow:

1.  **`thread_1 = Thread.new { ... }`**: A new thread is created. It immediately starts executing the code inside its block. In this case, it prints a "Started" message, pauses for 2 seconds to simulate a long-running task, and then prints an "Ended" message.

2.  **`thread_2 = Thread.new { ... }`**: A second thread is created and starts running concurrently with `thread_1` and the main thread. It performs a similar task but only sleeps for 1 second.

3.  **`thread_1.join` & `thread_2.join`**: These are crucial synchronization calls. The `join` method pauses the execution of the script's main thread and waits until the specified thread (`thread_1` or `thread_2`) has finished its work. Without `join`, the main thread would continue and exit the program, potentially terminating the other threads before they have completed.

4.  **`puts "Thread main: All Thread Ended."`**: This line is only executed after **both** `thread_1` and `thread_2` have completed, thanks to the `join` calls.

## How to Run

1.  Navigate to the directory containing the script in your terminal.
2.  Run the script using the Ruby interpreter:

    ```bash
    ruby "Example.ruby"
    ```

## Example Output

When you run the script, you will see output similar to the following. Note that while the "Started" messages might appear in a different order depending on the system's thread scheduler, the "Ended" messages will appear based on their `sleep` duration.

```
Thread 1: Started.
Thread 2: Started.
Thread 2: Ended.
Thread 1: Ended.
Thread main: All Thread Ended.
```

## Further Exploration

This example covers the basics. More advanced multithreading topics to explore include:

- **Race Conditions**: What happens when multiple threads try to modify the same data at the same time?
- **Mutex (Mutual Exclusion)**: How to use `Mutex` to protect shared data and prevent race conditions.
- **Thread Pools**: Managing a group of worker threads to handle tasks from a queue, which is more efficient than creating new threads for every task.

---

_This README was generated based on the `Example.ruby` script._
