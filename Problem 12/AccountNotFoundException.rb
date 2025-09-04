class AccountNotFoundException < StandardError
    def initialize(msg = "Account not found")
        super(msg)
    end
end