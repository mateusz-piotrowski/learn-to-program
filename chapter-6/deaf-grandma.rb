puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 6"
puts "# File: deaf-grandma.rb"
puts "# = = = = = = = = = = "
puts ""

grandma_repeat = "HUH?!  SPEAK UP, SONNY!"
grandma_reply = "NO, NOT SINCE 1938!"

puts 'Hello Grandson, What you want?'
question_to_grandma = gets.chomp

# Mark 1
while question_to_grandma != "BYE"
  question_to_grandma = gets.chomp
  if question_to_grandma != ""
    if question_to_grandma == "BYE"
      puts "Exitting..."
      exit
    end
    if question_to_grandma == question_to_grandma.capitalize
      puts grandma_reply
    else
      puts grandma_repeat
    end
    puts ''
  else
    puts '[ Please tell something to the Grandma ]'
    puts ''
  end
end

# Mark 2
# while question_to_grandma != "BYE"
#   puts 'Hello Grandson, What you want?'
#   question_to_grandma = gets.chomp
#   if (question_to_grandma == question_to_grandma.capitalize)
#     puts grandma_repeat
#     puts ''
#   else
#     puts grandma_reply
#     puts ''
#   end    
# end
