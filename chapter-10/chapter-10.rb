puts 
puts "# = = = = = = = = = = "
puts "# Chapter 10"
puts "# File: chapter-10.rb"
puts "# = = = = = = = = = = "
puts

puts 'Part 1:'
puts 'Blocks and Procs'

toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call
puts ''

doYouLike = Proc.new do |aGoodThing|
  puts 'I *really* like ' + aGoodThing + '!'
end

doYouLike.call 'chocolate'
doYouLike.call 'ruby'
puts ''

puts 'Part 2:'
puts 'Methods Which Take Procs'
puts ''
def doSelfImportantly someProc
  puts 'Everybody just HOLD ON! I have something to do...'
  someProc.call
  puts 'Ok everyone, I\'m done. Go on with what you were doing.'
end

sayHello = Proc.new do
  puts 'hello'
end

sayGoodbye = Proc.new do
  puts 'goodbye'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye

puts ''

def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance

puts ''

def doUntilFalse firstInput, someProc
  input  = firstInput
  output = firstInput

  while output
    input  = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop                         # Take off the last number...
    array.push lastNumber*lastNumber  # ...and replace it with its square...
    array.push lastNumber-1           # ...followed by the next smaller number.
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)

puts ''

puts 'Part 3:'
puts 'Methods Which Return Procs'
puts ''

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)

puts ''

puts 'Part 4:'
puts 'Passing Blocks (Not Procs) into Methods'
puts ''

class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0, which is even.
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)  # Toggle from even to odd, or odd to even.
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love ' + fruit + ' pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s + ' is NOT an even number!'
end

puts ''

def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock + ':  ' + duration.to_s + ' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s + ' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end

puts ''

puts 'Part 5:'
puts 'Recursion'
def ask_recursively question
  puts question
  reply = gets.chomp.downcase
  if reply == 'yes'
      true
    elsif
      reply == 'no'
      false else
    puts 'Please answer "yes" or "no".'
    ask_recursively question # This is the magic line.
  end
end

ask_recursively 'Do you wet the bed?'
ask_recursively 'Do you like eating tacos?'
ask_recursively 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask_recursively 'Do you like drinking horchata?'
ask_recursively 'Do you like eating flautas?'
puts ''

puts 'Part 6:'
puts 'Factorial'
def factorial num
  if num < 0
    return 'You can\'t take the factorial of a negative number!'
  end

  if num <= 1
    1
  else
    num * factorial(num-1)
  end
end

puts factorial(3)
puts factorial(30)
puts ''

puts 'Part 7:'
puts 'Continents'
# These are just to make the map
# easier for me to read. "M" is
# visually more dense than "o".
M = 'land'
o = 'water'
world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y
  if world[y][x] != 'land'
    # Either it's water or we already
    # counted it, but either way, we don't
    # want to count it now.
    return 0
  end

  # So first we count this tile...
  size = 1
  world[y][x] = 'counted land'

  # ...then we count all of the
  # neighboring eight tiles (and,
  # of course, their neighbors by
  # way of the recursion).

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1)
  size = size + continent_size(world, x+1, y+1)

  size
end

puts 'The continent size:'
puts continent_size(world, 5, 5)
puts ''