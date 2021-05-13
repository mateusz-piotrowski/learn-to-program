puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 5"
puts "# File: table-of-contents.rb"
puts "# = = = = = = = = = = "
puts ""

lineWidth = 70
header = 'Table of Contents'
chapter_1 = 'Chapter 1'
chapter_2 = 'Chapter 2'
chapter_3 = 'Chapter 3'

numbers = 'Numbers'
letters = 'Letters'
variables = 'Variables'

page_1 = 'page 1'
page_2 = 'page 72'
page_3 = 'page 118'

puts header.center lineWidth
puts chapter_1 + ' ' + numbers.ljust(lineWidth/3) + page_1.rjust(lineWidth/3)
puts chapter_2 + ' ' + letters.ljust(lineWidth/3) + page_2.rjust(lineWidth/3)
puts chapter_3 + ' ' + variables.ljust(lineWidth/3) + page_3.rjust(lineWidth/3)
puts ''
