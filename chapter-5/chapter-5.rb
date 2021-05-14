puts 
puts "# = = = = = = = = = = "
puts "# Chapter 5"
puts "# File: chapter-5.rb"
puts "# = = = = = = = = = = "
puts

puts 'More About Methods:'
puts 'Part 1:'
puts 'hello '.+ 'world'
puts (10.* 9).+ 9
puts 'pig ' * 5
# puts 5 * 'pig' <-- it will generate the error by ruby
puts ''

puts 'Part 2:'
iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
# self.puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
puts ''

puts 'Part 3:'
var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts 'Before reverse: ' + var1
puts var1.reverse
puts ''

puts 'Before reverse: ' + var2
puts var2.reverse
puts ''

puts 'Before reverse: ' + var3
puts var3.reverse
puts ''

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'
puts ''

puts 'Part 4:'
letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts ''

puts 'Part 5:'
lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))
puts ''

puts 'Part 6:'
lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
puts ''

puts 'Part 7:'
puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts ''
puts((5-2).abs)
puts((2-5).abs)
puts ''

puts 'Part 8:'
puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts('but you can never trust a weatherman.')
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''

puts 'Part 9:'
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
puts ''