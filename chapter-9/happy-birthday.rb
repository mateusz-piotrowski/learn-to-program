puts 
puts "# = = = = = = = = = = "
puts "# Chapter 9"
puts "# File: happy-birthday.rb"
puts "# = = = = = = = = = = "
puts

puts 'Hi! Please enter your birth date '
puts 'and I will tell how old you are'
puts ''

puts 'Enter the year:'
year = gets.chomp
puts 'Enter the month:'
month = gets.chomp
puts 'Enter the day:'
day = gets.chomp
puts ''

current_year = Time.new.year
my_birthday = current_year.to_i - year.to_i

puts 'You are ' + my_birthday.to_s + ' years old.'  
puts ''