puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 6"
puts "# File: leap-years.rb"
puts "# = = = = = = = = = = "
puts ""

puts 'Hi, I will calculate leap years for you.'
puts ''
puts 'Please, put the start year:'
start_year = gets.chomp.to_i
puts 'Please, put the end year:'
end_year = gets.chomp.to_i
puts ''

if start_year.modulo(100) != 0 && start_year.modulo(4) == 0 || start_year.modulo(400) == 0
  puts 'Start year is leap.'
elsif start_year.modulo(100) == 0
  puts 'Start year is not leap.'
end

if end_year.modulo(100) != 0 && end_year.modulo(4) == 0 || end_year.modulo(400) == 0
  puts 'End year is leap.'
elsif end_year.modulo(100) == 0
  puts 'End year is not leap.'
end
puts ''

# puts 'Leap Year: 1984, 2004, 1600, 2000'
# puts 'Not Leap Year: 1800, 1900'

# Leap years are years divisible by four (like 1984 and 2004)
# years divisible by 100 are not leap years (such as 1800 and 1900)
# unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years).
