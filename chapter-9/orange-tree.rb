puts 
puts "# = = = = = = = = = = "
puts "# Chapter 9"
puts "# File: orange-tree.rb"
puts "# = = = = = = = = = = "
puts

puts 'Orange Tree '
puts ''

class OrangeTree

  def initialize name
    @name = name
    @height = 1
    @orange_count = 0
    @age = 1
    @death = 0

    puts 'The ' + @name + ' is born.'
  end

  def one_year_passes
    puts 'The ' + @name + ' has '+ @height.to_s + ' meter height.'
    height
  end

  def count_the_oranges
    puts 'The ' + @name + ' has '+ @orange_count.to_s + ' oranges.'
    fruits_number
  end

  def years_old
    puts 'The ' + @name + ' has '+ @age.to_s + ' years old.'
    age
    death
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def height
    @height = @height + 1
  end

  def age
    @age = @age + 1
    if @age >= 16
      @death = @age
    end
  end

  def fruits_number
    if @age >= 4 && @age < 10
      @orange_count = @orange_count + 1
    end
    if @age >= 10
      @orange_count = @orange_count - 1
    end
  end

  def death
    if @age == @death
      puts ''
      puts 'The Orange Tree died.'
    end
  end

end

pet = OrangeTree.new 'Orange Tree'
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old
puts ''
pet.one_year_passes
pet.count_the_oranges
pet.years_old

puts ''
