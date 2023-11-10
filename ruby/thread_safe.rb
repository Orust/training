require 'thread'

mutex = Mutex.new
counter = 0

threads = 3.times.map do |i|
  Thread.new do
    sleep(rand(0.1..0.3))
    mutex.synchronize { counter += 1 }
    puts "Thread #{i} incremented counter to #{counter}"
  end
end

threads.each(&:join)
puts "Final counter: #{counter}"
