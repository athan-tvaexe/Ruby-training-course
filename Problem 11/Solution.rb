def guessing_numbers()
    puts "Guess a number between 1 and 100"
    number = rand(1..100)
    choice = gets.chomp.to_i
    while choice != number
        if choice < number
            puts "Too low! Try again."
        else
            puts "Too high! Try again."
        end
        choice = gets.chomp.to_i
    end
    puts "Congratulations! You guessed the number #{number} correctly."
end
guessing_numbers()

