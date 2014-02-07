def sort some_array
  recursive_sort some_array, [] 
end

def recursive_sort unsorted_array, sorted_array

  array_len = unsorted_array.length

  if array_len == 1
    return unsorted_array
  else
    taking_str = unsorted_array[0]
    taking_num = 0
    i = 1
    while i < array_len
      if unsorted_array[i] < taking_str
        taking_str = unsorted_array[i]
        taking_num = i
      end
      i += 1
    end
    unsorted_array.delete_at(taking_num)
    sorted_array.push(taking_str)
    sorted_array += recursive_sort unsorted_array, []
    return sorted_array
  end

end

puts "Please type as more word as you can:"

str_array = []

while true
  input = gets.chomp
  if input.length == 0
    break
  end
  str_array.push(input)
end

if str_array.length == 0
  puts "You don't type anything."
else
  puts "Here is you typed in order below:"
  puts sort str_array
end