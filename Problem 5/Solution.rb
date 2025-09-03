def max_of_three(a, b, c)
  max = a;
  max = b if b > max
  max = c if c > max
  return max
    
end

if ARGV.length != 3
  puts "Please provide exactly three numbers"
  exit
end

puts "Max: #{max_of_three(*ARGV.map { |x| eval(x) })}"