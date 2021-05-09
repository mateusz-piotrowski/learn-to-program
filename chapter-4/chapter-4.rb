puts 
puts "# = = = = = = = = = = "
puts "# Chapter 4"
puts "# File: chapter-4.rb"
puts "# = = = = = = = = = = "
puts

puts 'Mixing It Up:'
var1 = '2'
var2 = '5'
puts var1 + var2
puts ''

puts 'Conversions:'
puts 'Part 1:'
var1 = 2
var2 = '5'
puts var1.to_s + var2
puts ''

puts 'Part 2:'
var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i
puts ''

puts 'Part 3:'
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts ''

puts 'Another Look at \'puts\':'
puts 20
puts 20.to_s
puts '20'
puts ''

puts 'The Methods: \'gets\' and \'chomp\''
puts 'Part 1:'
puts gets
puts ''

puts 'Part 2:'
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'
puts ''