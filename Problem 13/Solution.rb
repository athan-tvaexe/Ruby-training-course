def count_lines(file_path)
  line_count = 0
  File.open(file_path, 'r') do |file|
    file.each_line { line_count += 1 }
  end
  line_count
end

def grep(pattern, file_path)
  matches = []
  File.open(file_path, 'r') do |file|
    file.each_line do |line|
      matches << line if line.include?(pattern)
    end
  end
  matches
end

