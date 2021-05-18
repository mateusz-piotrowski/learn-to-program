puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 6"
puts "# File: 99-bottles.rb"
puts "# = = = = = = = = = = "
puts ""

number = 99
text = " Bottles of Beer on the Wall"

song_line = number.to_s + text

# Mark 1
for i in 0..number
  puts "#{number - i}" + text
end

# Mark 2
# for i in 0..number
#   number_to_print = number - i
#   puts number_to_print.to_s + text
# end
