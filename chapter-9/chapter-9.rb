puts 
puts "# = = = = = = = = = = "
puts "# Chapter 9"
puts "# File: chapter-9.rb"
puts "# = = = = = = = = = = "
puts

puts 'Classes'
puts 'Part 1:'
a = Array.new  + [12345]  # Array  addition.
b = String.new + 'hello'  # String addition.
c = Time.new

puts 'a = ' + a.to_s
puts 'b = ' + b.to_s
puts 'c = ' + c.to_s
puts ''

puts 'Part 2:'
puts 'The Time Class'
time  = Time.new   # The moment I generated this web page.
time2 = time + 60  # One minute later.

puts time
puts time2
puts ''

puts 'Time.mktime:'
puts Time.mktime(2000, 1, 1)          # Y2K.
puts Time.mktime(1976, 8, 3, 10, 11)  # When I was born.
puts ''