puts 
puts "# = = = = = = = = = = "
puts "# Chapter 9"
puts "# File: one-billion-seconds.rb"
puts "# = = = = = = = = = = "
puts

puts 'Hi! Please enter your birth date '
puts 'and I will tell how many seconds passed'
puts ''

puts 'Enter the year:'
year = gets.chomp
puts 'Enter the month:'
month = gets.chomp
puts 'Enter the day:'
day = gets.chomp
puts ''

my_birthday = Time.mktime(year.to_i, month.to_i, day.to_i)

puts 'You are ' + my_birthday.to_i.to_s + ' seconds old.'  
puts ''