puts 
puts "# = = = = = = = = = = "
puts "# Chapter 9"
puts "# File: baby-dragon.rb"
puts "# = = = = = = = = = = "
puts

puts 'Baby Dragon Simulator.'
puts ''

class Dragon

  def initialize name
    @name = name

    puts @name + ' is born.'
  end

  def walk
    puts @name + ' went walk.'
  end

  def eat
    puts @name + ' eat.'
  end

end

pet = Dragon.new 'Norbert'
puts ''
puts 'Baby Dragon understand commands: [walk], [eat]'
puts 'What you want do first?'
user_choice_1 = gets.chomp

if user_choice_1 == 'walk'
  pet.walk
else
  puts 'Baby Dragon not understand what you wrote - Please try again later.'
end

puts ''
puts 'What you want do now?'
user_choice_2 = gets.chomp

if user_choice_2 == 'eat'
  pet.eat
else
  puts 'Baby Dragon not understand what you wrote - Please try again later.'
end

puts ''
