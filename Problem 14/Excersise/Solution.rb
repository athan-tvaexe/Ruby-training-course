# Implements the simple Sieve of Eratosthenes algorithm to find all primes
# up to a given limit. This is used to generate the base primes for the segmented sieve.
def simple_sieve(limit)
  primes = []
  is_prime = Array.new(limit + 1, true)
  is_prime[0] = is_prime[1] = false

  # Iterate from 2 up to the square root of the limit.
  (2..Math.sqrt(limit)).each do |p|
    if is_prime[p]
      # Mark all multiples of p as not prime.
      (p*p..limit).step(p) do |i|
        is_prime[i] = false
      end
    end
  end

  # Collect all numbers that are still marked as prime.
  (2..limit).each do |p|
    primes << p if is_prime[p]
  end
  primes
end

require 'thread'
require 'fileutils'

# Implements a multi-threaded Segmented Sieve of Eratosthenes to find primes up to n.
# This is highly efficient for large n as it breaks the problem into smaller chunks (segments)
# and processes them in parallel.
#
# n: The upper limit to find primes up to.
# num_threads: The number of threads to use (this is illustrative, the current implementation
#              creates a thread per segment, not limited by this number).
# file_path: The file where the list of primes will be saved.
def segmented_sieve(n, num_threads, file_path)
  # Step 1: Preliminary Sieve.
  # Find all prime numbers up to the square root of n. These "base primes"
  # are all we need to sieve the remaining numbers.
  limit = Math.sqrt(n).to_i
  base_primes = simple_sieve(limit)

  # Ensure the directory for the output file exists before trying to write to it.
  dir = File.dirname(file_path)
  FileUtils.mkdir_p(dir) unless File.directory?(dir)

  # Open the file to write the results.
  File.open(file_path, "w") do |file|
    file.puts base_primes # Write the initial small primes found.

    mutex = Mutex.new # A mutex to ensure thread-safe writing to the file.
    threads = []
    
    # The size of each segment. This can be tuned for optimal performance based on
    # CPU cache sizes and other system factors.
    segment_size = 100_000

    # Iterate through the numbers from sqrt(n) to n in segments.
    (limit + 1..n).step(segment_size).each do |low|
      high = [low + segment_size - 1, n].min

      threads << Thread.new do
        # Create a boolean array for the current segment, initially all true.
        is_prime_segment = Array.new(high - low + 1, true)

        # Use the base primes to sieve the current segment.
        base_primes.each do |p|
          # Find the first multiple of p that is >= low.
          start = ((low + p - 1) / p) * p
          # Mark all multiples of p within the [low, high] range as not prime.
          (start..high).step(p) do |i|
            is_prime_segment[i - low] = false
          end
        end

        # Collect all numbers in this segment that are still marked as prime.
        primes_in_segment = []
        (0..high - low).each do |i|
          primes_in_segment << (low + i) if is_prime_segment[i]
        end
        
        # Use the mutex to safely write the results from this thread to the file.
        mutex.synchronize do
          file.puts primes_in_segment.join("\n") unless primes_in_segment.empty?
        end
      end
    end

    # Wait for all threads to complete their work.
    threads.each(&:join)
  end
end

if __FILE__ == $0
  total_numbers = 100_000_000
  num_threads = 4 # can adjust this based on your CPU cores.
  file_name = "primes_#{total_numbers}.txt"

  puts "Starting to find primes up to #{total_numbers}..."
  puts "Results will be saved to '#{file_name}'."
  
  start_time = Time.now
  segmented_sieve(total_numbers, num_threads, file_name)
  end_time = Time.now
  
  puts "Completed in #{end_time - start_time} seconds."
end