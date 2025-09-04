require_relative 'BankingSystem'
require_relative 'AccountNotFoundException'
require_relative 'InsufficientException'

# Create a new instance of the banking system
system = BankingSystem.new

# Main application loop
while true
    puts "\n==================================="
    puts "Welcome to the TVA.exe Banking System"
    puts "What do you want to do?"
    puts "==================================="
    puts "1. Create a new account"
    puts "2. Login to an existing account"
    puts "3. Login as administrator"
    puts "4. Exit"
    print "Enter your choice: "

    choice = gets.chomp.to_i

    case choice
    when 1
        puts "\nEnter your name:"
        name = gets.chomp
        puts "Enter initial deposit amount:"
        initial_deposit = gets.chomp.to_f
        system.create_account(name, initial_deposit)

    when 2
        puts "\nEnter your account number:"
        account_number = gets.chomp.to_i
        begin
            account = system.loginUser(account_number)
            # User menu loop
            while true
                puts "\n==================================="
                puts "Logged in as: #{account.name}"
                puts "What do you want to do?"
                puts "==================================="
                puts "1. Deposit"
                puts "2. Withdraw"
                puts "3. Transfer Funds"
                puts "4. View Balance"
                puts "5. Logout"
                print "Enter your choice: "
                user_choice = gets.chomp.to_i

                case user_choice
                when 1
                    puts "Enter deposit amount:"
                    amount = gets.chomp.to_f
                    account.deposit(amount)
                    system.update_balance_in_file(account, 'data.txt')
                    puts "Deposit successful. New balance: #{account.balance}"
                when 2
                    puts "Enter withdrawal amount:"
                    amount = gets.chomp.to_f
                    begin
                        account.withdraw(amount)
                        system.update_balance_in_file(account, 'data.txt')
                        puts "Withdrawal successful. New balance: #{account.balance}"
                    rescue InsufficientException => e
                        puts e.message
                    end
                when 3
                    puts "Enter recipient's account number:"
                    to_account_number = gets.chomp.to_i
                    puts "Enter transfer amount:"
                    amount = gets.chomp.to_f
                    # The BankingSystem method handles updating the file internally
                    system.transfer_funds(account.account_number, to_account_number, amount)
                when 4
                    puts "Current balance: #{account.balance}"
                when 5
                    puts "Logging out..."
                    break
                else
                    puts "Invalid choice. Please try again."
                end
            end
        rescue AccountNotFoundException => e
            puts e.message
        end

    when 3
        puts "\nEnter admin username:"
        username = gets.chomp
        puts "Enter admin password:"
        password = gets.chomp
        if system.loginAdmin(username, password)
            # Admin menu loop
            while true
                puts "\n==================================="
                puts "Admin Menu"
                puts "What do you want to do?"
                puts "==================================="
                puts "1. View all accounts"
                puts "2. Logout"
                print "Enter your choice: "
                admin_choice = gets.chomp.to_i
                
                case admin_choice
                when 1
                    accounts = system.load_accounts('data.txt')
                    puts "\nList of all accounts:"
                    puts "-----------------------------------"
                    accounts.each do |acc|
                        puts "Account Number: #{acc.account_number}, Name: #{acc.name}, Balance: #{acc.balance}"
                    end
                    puts "-----------------------------------"
                when 2
                    puts "Logging out of admin account..."
                    break
                else
                    puts "Invalid choice. Please try again."
                end
            end
        end

    when 4
        puts "\nExiting the system. Goodbye!"
        break
    else
        puts "\nInvalid choice. Please try again."
    end
end
