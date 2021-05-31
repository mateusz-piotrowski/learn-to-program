puts 
puts "# = = = = = = = = = = "
puts "# Chapter 10"
puts "# File: better-logger.rb"
puts "# = = = = = = = = = = "
puts

puts 'The Better Program Logger.'
puts ''

text_block_beginning = Proc.new do
  puts '...nesting text'
  puts '...after beginning'
  puts ''
end

text_block_finishing = Proc.new do
  puts ''
  puts '...nesting text'
  puts '...before finishing'
end

beginning = Proc.new do
  puts 'Beginning...'
  text_block_beginning.call
end

finished = Proc.new do
  text_block_finishing.call
  puts '...Finished.'
end

def log someProc
  someProc.call
end

log beginning
log finished

puts ''
