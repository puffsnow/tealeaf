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
	puts str_array.sort
end
