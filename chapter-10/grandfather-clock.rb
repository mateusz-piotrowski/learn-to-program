puts
puts "# = = = = = = = = = = "
puts "# Chapter 10"
puts "# File: grandfather-clock.rb"
puts "# = = = = = = = = = = "
puts

puts 'The Grandfather Clock'

current_now = Time.now
current_hour = Time.now.hour


puts 'DateTime.now is: ' + current_now.to_s
puts 'Current hour is: ' + current_hour.to_s
puts ''
puts 'Hours since Midnight are:'

hours_since_midnight = Proc.new do
  for i in 0..current_hour
    puts "#{i}"
    puts 'DONG!'
  end
end

hours_since_midnight.call
puts ''

