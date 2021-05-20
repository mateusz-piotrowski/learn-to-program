puts 
puts "# = = = = = = = = = = "
puts "# Chapter 7"
puts "# File: chapter-7.rb"
puts "# = = = = = = = = = = "
puts

puts 'Arrays and Iterators'
puts 'Part 1:'
puts []
puts [5]
puts ['Hello', 'Goodbye']

flavor = 'vanilla'             # This is not an array, of course...
puts flavor
puts [89.9, flavor, [true, false]]  # ...but this is.
puts ''

puts 'Part 2:'
names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]  # This is out of range.
puts ''

puts 'Part 3:'
languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'
puts ''

3.times do
  puts 'Hip-Hip-Hooray!'
end
puts ''

puts 'Part 4:'
foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'

200.times do
  puts []
end
puts ''

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
puts ''