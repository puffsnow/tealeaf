def show_roman_numeral num
	devide_num = [1000, 500, 100, 50, 10, 5, 1]
	devide_char = ["M", "D", "C", "L", "X", "V", "I"]
	output_str = ""
	
	char_count = devide_char.length
	i = 0
	while i < char_count
		output_str = output_str + devide_char[i] * (num / devide_num[i])
		num = num % devide_num[i]
		i = i + 1
	end


	puts output_str

end

puts "Please type integer, and I'll show you the Roman numeral:"
puts "(If you type 0 or negative number, this program will end.)"

while true
	input_num = gets.chomp.to_i
	if input_num <= 0
		break
	elsif input_num > 10000
		puts "maybe this number is too big..."
	else
		show_roman_numeral input_num
	end
end