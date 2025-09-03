def max_of_many(numbers)
    max = numbers[0]
    numbers.each do |num|
        max = num if num > max
    end
    return max
end


puts max_of_many(ARGV.map { |x| eval(x) })