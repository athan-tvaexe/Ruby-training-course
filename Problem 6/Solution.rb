def palindrome?(str)
    str = str.downcase
    return str == str.reverse
    
end

if ARGV.empty?
    puts "Please provide a string"
    exit
end

puts palindrome?(ARGV[0])