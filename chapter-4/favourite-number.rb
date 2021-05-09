puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 4"
puts "# File: favourite-number.rb"
puts "# = = = = = = = = = = "
puts ""

puts 'Please enter your favourite number:'
favourite_number = gets
puts ''

better_favourite_number = favourite_number.to_i + 1

puts 'I have a little proposition:'
puts 'Maybe ' + better_favourite_number.to_s + ' will be your new favourite number?;)'
puts ''