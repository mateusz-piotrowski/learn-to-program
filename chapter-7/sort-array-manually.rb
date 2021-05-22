puts ""
puts "# = = = = = = = = = = "
puts "# Chapter 7"
puts "# File: sort-array-manually.rb"
puts "# = = = = = = = = = = "
puts ""

array_before_sort = [0, 1, 3, 2, 4, 6, 5, 7, 9, 8]
array_size = array_before_sort.count

puts 'The array before sort:'
puts array_before_sort.to_s
puts ''
puts 'The array contains ' + array_size.to_s + ' elements.'

array_min_element = array_before_sort.min
array_max_element = array_before_sort.max

puts 'The array min element is: ' + array_min_element.to_s + '.'
puts 'The array max element is: ' + array_max_element.to_s + '.'
puts ''

array_after_sort = []

for element in array_before_sort do
  if element == array_min_element
    array_after_sort[0] = element
  end
  if element == array_min_element + 1
    array_after_sort[1] = element
  end
  if element == array_min_element + 2
    array_after_sort[2] = element
  end
  if element == array_min_element + 3
    array_after_sort[3] = element
  end
  if element == array_min_element + 4
    array_after_sort[4] = element
  end
  if element == array_min_element + 5
    array_after_sort[5] = element
  end
  if element == array_min_element + 6
    array_after_sort[6] = element
  end
  if element == array_min_element + 7
    array_after_sort[7] = element
  end
  if element == array_min_element + 8
    array_after_sort[8] = element
  end
  if element == array_min_element + 9
    array_after_sort[9] = element
  end
end

puts 'The array after sort:'
puts array_after_sort.to_s
puts ''
