def sum_array(numbers)
  sum = numbers.sum
  puts "Sum: #{sum}"
end

# puts ARGV[0].class # String
sum_array(eval(ARGV[0]))