puts
puts "# = = = = = = = = = = "
puts "# Chapter 12"
puts "# File: chapter-12.rb"
puts "# = = = = = = = = = = "
puts

puts 'Part 1:'
puts 'New Classes of Objects'

alpha = Array.new + [12345] # Array addition.
beta = String.new + 'hello' # String addition.
karma = Time.new

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"
puts ''

puts 'Part 2:'
puts 'Time class'

time = Time.new # The moment we ran this code.
time2 = time + 60 # One minute later.

puts time
puts time2
puts ''

puts 'Part 3:'
puts 'Time class - local'

puts Time.local(2000, 1, 1) # Y2K.
puts Time.local(1976, 8, 3, 13, 31) # When I was born.
puts Time.gm(1955, 11, 5) # A red-letter day.
puts ''
