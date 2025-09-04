class InsufficientException < StandardError
    def initialize(msg = "Insufficient balance")
        super(msg)
    end
end