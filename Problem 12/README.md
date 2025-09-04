# Simple Banking System

A simple command-line banking system built with Ruby. This application demonstrates key Object-Oriented Programming (OOP) principles, including classes, modules, file I/O for data persistence, and custom exception handling.

## Goal

The primary goal of this project is to practice and showcase OOP concepts in Ruby by creating a functional, albeit simple, banking application. It covers:

- Class and object creation (`BankAccount`, `BankingSystem`).
- Modular code with the `Timestamp` module.
- Persistent data storage using a flat text file (`data.txt`).
- Graceful error handling with custom exceptions (`AccountNotFoundException`, `InsufficientException`).
- Separation of concerns between business logic (`BankingSystem`) and user interface (`MainApp.rb`).

## Features

- **Account Creation**: Create new bank accounts with an initial deposit.
- **User Login**: Log in to an account using a unique account number.
- **Admin Panel**: A simple administrator login to view all registered accounts.
- **Core Banking Transactions**:
  - **Deposit**: Add funds to an account.
  - **Withdraw**: Remove funds from an account, with balance checks.
  - **Transfer**: Move funds between two accounts within the system.
- **Data Persistence**: All account data is saved to `data.txt` and loaded on startup, ensuring data is not lost between sessions.

## How to Run

1.  **Navigate to the project directory**:

    ```bash
    cd "Problem 12"
    ```

2.  **Run the application**:
    ```bash
    ruby MainApp.rb
    ```

## Example Usage

Upon running the application, you will be greeted with the main menu:

```
===================================
Welcome to the TVA.exe Banking System
What do you want to do?
===================================
1. Create a new account
2. Login to an existing account
3. Login as administrator
4. Exit
Enter your choice:
```

A user can then interact with the system to perform various banking operations.

## Code Explanation

- **`BankAccount` Class**: Represents a single bank account. It holds the account holder's name, balance, account number, and timestamps. It contains the logic for deposits and withdrawals.

- **`Timestamp` Module**: A reusable module that automatically adds `created_at` and `updated_at` timestamps to any class that includes it. This is used by `BankAccount` to track account creation and modification times.

- **`BankingSystem` Class**: The application's core. It orchestrates all operations, including creating accounts, managing user logins, processing transfers, and handling all interactions with the `data.txt` persistence layer.

- **Custom Exceptions**:

  - `AccountNotFoundException`: Raised when an operation is attempted on a non-existent account number.
  - `InsufficientException`: Raised when a withdrawal or transfer would result in a negative balance.

- **`MainApp.rb`**: The entry point of the application. It handles all user input and output, presenting menus and interacting with the `BankingSystem` to execute user commands.

## File Structure

```
.
├── AccountNotFoundException.rb  # Custom exception for missing accounts
├── BankAccount.rb               # Defines the BankAccount class
├── BankingSystem.rb             # Core business logic
├── data.txt                     # Data store for accounts
├── InsufficientException.rb     # Custom exception for low funds
├── MainApp.rb                   # Main application entry point and UI
├── README.md                    # This file
└── TimeStamp.rb                 # Module for handling timestamps
```

## Further Improvements

This project serves as a solid foundation. Future enhancements could include:

- **Enhanced Security**: Implement password protection for user accounts and use environment variables or a config file for admin credentials instead of hardcoding them.
- **Transaction History**: Log every transaction (deposit, withdrawal, transfer) to a separate file or database table for auditing and statement generation.
- **Improved Data Storage**: Migrate from a flat text file to a more robust solution like a SQLite database for better data integrity, scalability, and performance.

# Note
This project was included the problem 13. Timestampable モジュール Mixin and 14. 動的アクセサ生成
