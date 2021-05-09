puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 4"
puts "# File: personal-data.rb"
puts "# = = = = = = = = = = "
puts ""

puts 'Hi! I\'m your ruby script. Please, introduce yourself.'
puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
puts ''

full_name = first_name + ' ' + middle_name + ' ' + last_name

puts 'Your full name is: ' + full_name + '?'
puts 'What a nice name! ;)'
puts ''