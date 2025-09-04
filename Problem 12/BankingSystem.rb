require_relative 'BankAccount'
require_relative 'AccountNotFoundException'
require_relative 'InsufficientException' # Needed for transfer_funds
require 'time' # To parse the timestamp strings from the file

class BankingSystem
    
    # Class variable to keep track of account IDs
    @@counting_id = 0
    
    def initialize
        # Load accounts when the system starts to determine the last ID
        @accounts = load_accounts('data.txt')
        @@counting_id = @accounts.empty? ? 0 : @accounts.map(&:account_number).max
    end
    
    def create_account(name, initial_balance)
        @@counting_id += 1
        account = BankAccount.new(initial_balance, name, @@counting_id, Time.now, Time.now)
        @accounts << account
        write_to_file(account, 'data.txt')
        puts "Account created successfully. Account Number: #{@@counting_id}"
    end

    def write_to_file(account, filename)
        File.open(filename, 'a') do |file|
            file.puts("#{account.account_number},#{account.name},#{account.balance},#{account.created_at},#{account.updated_at}")
        end
    end

    # Method to update only one account in the file
    def update_balance_in_file(account, filename)
        lines = File.readlines(filename)
        File.open(filename, 'w') do |file|
            lines.each do |line|
                # Update the line for the current account
                if line.start_with?("#{account.account_number},")
                    file.puts("#{account.account_number},#{account.name},#{account.balance},#{account.created_at},#{account.updated_at}")
                else
                    file.puts(line)
                end
            end
        end
    end

    def transfer_funds(from_account_number, to_account_number, amount)
        from_account = @accounts.find { |acc| acc.account_number == from_account_number }
        to_account = @accounts.find { |acc| acc.account_number == to_account_number }
    
        if from_account.nil? || to_account.nil?
            raise AccountNotFoundException.new("One or both account numbers are invalid.")
        end
    
        begin
            from_account.withdraw(amount)
            to_account.deposit(amount)

            # Update the updated_at timestamp for both accounts
            from_account.updated_at = Time.now
            to_account.updated_at = Time.now
    
            puts "Transfer successful. New balance of Account #{from_account_number}: #{from_account.balance}, Account #{to_account_number}: #{to_account.balance}"
            update_balance_in_file(from_account, 'data.txt')
            update_balance_in_file(to_account, 'data.txt')
            
        rescue InsufficientException => e
            puts e.message  
        end
    end

    def load_accounts(filename)
        accounts = []
        if File.exist?(filename)
            File.readlines(filename).each do |line|
                account_number, name, balance, created_at, updated_at = line.chomp.split(',')
                # Ensure correct data types and parse timestamps
                created_at = created_at.nil? || created_at.empty? ? Time.now : Time.parse(created_at)
                updated_at = updated_at.nil? || updated_at.empty? ? Time.now : Time.parse(updated_at)
                accounts << BankAccount.new(balance.to_f, name, account_number.to_i, created_at, updated_at)
            end
        end
        accounts
    end

    def loginUser(account_number)
        account = @accounts.find { |acc| acc.account_number == account_number }
        if account
            puts "Login successful. Welcome, #{account.name}!"
            account
        else
            raise AccountNotFoundException.new("Account number #{account_number} not found.")
        end
    end

    def loginAdmin(username, password)
        admin_username = "admin"
        admin_password = "123456" # This should not be hardcoded in a real application
        if username == admin_username && password == admin_password
            puts "Admin login successful."
            true
        else
            puts "Invalid admin credentials."
            false
        end
    end
end
