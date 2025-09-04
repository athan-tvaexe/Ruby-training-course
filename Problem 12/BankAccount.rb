require_relative 'InsufficientException'
require_relative 'TimeStamp'

class BankAccount
    include Timestamp
    attr_accessor :balance, :name, :updated_at
    attr_reader :account_number, :created_at

    def initialize(balance, name, account_number, created_at = Time.now, updated_at = Time.now)
        @balance = balance
        @name = name
        @account_number = account_number
        @created_at = created_at
        @updated_at = updated_at
        super()
    end

    def deposit(amount)
        @balance += amount
        @updated_at = Time.now
    end

    def withdraw(amount)
        if amount > @balance
            raise InsufficientException.new("Insufficient balance")
        else
            @balance -= amount
            @updated_at = Time.now
        end
    end
end