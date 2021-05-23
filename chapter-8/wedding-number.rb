puts 
puts "# = = = = = = = = = = "
puts "# Chapter 8"
puts "# File: wedding-number.rb"
puts "# = = = = = = = = = = "
puts

puts 'Wedding Number:'

def weddingNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  num_string = ''  # This is the string we will return.

  ones_place = ['one',    'two',       'three',    'four',     'five',
                'six',    'seven',     'eight',    'nine']
  tens_place = ['ten',    'twenty',    'thirty',   'forty',    'fifty',
                'sixty',  'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number

  write = left/1000
  left = left - write*1000

  if write > 0
    # Now here's a really sly trick:
    thousends  = weddingNumber write
    num_string = num_string + thousends + ' thousend' + ' and'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # thousends we have to write out. After we add "thousends" to
    # "num_string", we add the string ' thousend' after it.
    # So, for example, if we originally called weddingNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have weddingNumber write out the 'nineteen' for us,
    # then we write out ' thousend', and then the rest of
    # weddingNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = weddingNumber write
    num_string = num_string + hundreds + ' hundred' + ' and'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "num_string", we add the string ' hundred' after it.
    # So, for example, if we originally called weddingNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have weddingNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # weddingNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end

puts weddingNumber(1)
puts weddingNumber(11)
puts weddingNumber(111)
puts weddingNumber(1111)
puts weddingNumber(11111)
puts weddingNumber(111111)
puts weddingNumber(1111111)
puts ''
