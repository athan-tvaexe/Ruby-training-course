def fibonacci(n)
    if n == 1
        return Array.new([1])
    elsif n == 2
        return Array.new([1, 1])
    else n > 2
        result = Array.new([1, 1])
        
        (n-2).times do
            new_value = result[-1] + result[-2]
            result.push(new_value)
        end
        return result
    end
    
end

if ARGV.empty?
  puts "Please provide a number"
  exit
end

input = ARGV[0]
unless input =~ /^\d+$/
  puts "Please provide a valid positive integer"
  exit
end

n = input.to_i
if n <= 0
  puts "Please provide a positive integer"
  exit
end

puts fibonacci(n).inspect
