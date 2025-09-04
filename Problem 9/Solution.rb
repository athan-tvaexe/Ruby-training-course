def word_frequency(sentence)
    # Replace all the chars match the regex with space
    sentence = sentence.gsub(/[[:punct:]]/, ' ')
    words = sentence.split(" ")
    frequency = Hash.new(0)
    words.each { |word| frequency[word] += 1 }
    return frequency
end

if ARGV.empty?
    puts "Please provide a String"
    exit
end

puts word_frequency(ARGV[0])