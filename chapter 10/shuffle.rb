puts "Please type a number you want."
puts "This program will shuffle from 0 to your number - 1."

input_num = gets.chomp.to_i

original_arr = []
output_arr = []
i = 0

while i < input_num
	original_arr.push(i)
	i += 1
end

i = input_num
while i > 0
	taking_num = rand(i)
	output_arr.push(original_arr[taking_num])
	original_arr.delete_at(taking_num)
	i = i - 1
end

puts output_arr