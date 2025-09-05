# Create an array to hold our threads
threads = []

# Create Thread 1
threads << Thread.new do
  puts 'Thread 1: Started.'
  sleep(2) # Simulate a time-consuming task
  puts 'Thread 1: Ended.'
end

# Create Thread 2
threads << Thread.new do
  puts 'Thread 2: Started.'
  sleep(1)
  puts 'Thread 2: Ended.'
end

# Wait for all threads to finish. This is more scalable than joining each one by name.
threads.each(&:join)

puts 'Thread main: All threads have ended.'