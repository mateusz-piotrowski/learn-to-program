puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 7"
puts "# File: new-table-of-contents.rb"
puts "# = = = = = = = = = = "
puts ""

lineWidth = 70
header = 'Table of Contents'

chapters = ['Chapter 1', 'Chapter 2', 'Chapter 3']
names = ['Numbers', 'Letters', 'Variables']
pages = ['page 1', 'page 72', 'page 118']

puts header.center lineWidth
puts chapters[0] + ' ' + names[0].ljust(lineWidth/3) + pages[0].rjust(lineWidth/3)
puts chapters[1] + ' ' + names[1].ljust(lineWidth/3) + pages[1].rjust(lineWidth/3)
puts chapters[2] + ' ' + names[2].ljust(lineWidth/3) + pages[2].rjust(lineWidth/3)
puts ''
