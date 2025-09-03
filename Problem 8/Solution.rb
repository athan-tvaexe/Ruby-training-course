def fizzbuzz(n)
    for i in 1..(n)
        if i%15 == 0 
            puts "FizzBuzz"
        elsif i%3 == 0
            puts "Fizz"
        elsif i%5 == 0
            puts "Buzz"
        else
            puts i
        end 
    end 
end

if ARGV.empty?
    puts "Please provide a number"
    exit
elsif !(ARGV[0] =~ /^\d+$/)
    puts "Please provide a valid positive integer"
    exit
end

fizzbuzz(ARGV[0].to_i)