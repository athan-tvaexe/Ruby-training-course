def even_odd_detector(num)
  num = num.to_i
  num%2==0 ? (puts "Even") : (puts "Odd")
end


if ARGV.empty?
  puts "Please provide a number"
  exit
end

ARGV.each do |arg|
  even_odd_detector(arg.to_i)
end

