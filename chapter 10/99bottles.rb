def unit_to_string num, unit_str

	return_str = ''

	ones_place = ['one'     ,	'two'    , 'three',	
								'four'    ,	'five'   , 'six',	
								'seven'   , 'eight'  , 'nine']
	tens_place = ['ten'     , 'twenty' , 'thirty',
		            'forty'   , 'fifty'  , 'sixty',
		            'seventy' , 'eighty' , 'ninety']
	teenagers =  ['eleven'  , 'twelve' , 'thirteen', 
	              'fourteen', 'fifteen', 'sixteen',
	              'seventeen', 'eighteen', 'nineteen']

	if num / 100 > 0
		return_str += ones_place[(num / 100) - 1] + ' hundred '
		num = num % 100
	end
	if num >= 20
		return_str += tens_place[(num / 10) - 1]
		num = num % 10
		if num > 0
			return_str += '-' + ones_place[num - 1] + ' '
		else
			return_str += ' '
		end
	elsif num > 10
		return_str += teenagers[num - 11] + ' '
	elsif num == 10
		return_str += "ten" + ' '
	elsif num > 0
		return_str += ones_place[num - 1] + ' '
	else
	end

	return_str += unit_str + ' '

	return return_str

end

def english_num num
	if num < 0
		return "Please enter a number that isn't negative."
	end
	if num == 0
		return "zero"
	end

	num_string = ""

	unit = ['trillion', 'billion', 'million', 'thousand', '']
	unit_num = []

	unit_count = unit.length
	i = 0
	while i < unit_count
		unit_num.push(num % 1000)
		num = num / 1000
		i += 1
	end
	unit_num.reverse!

	i = 0
	while i < unit_count
		if unit_num[i] > 0
			num_string += unit_to_string unit_num[i], unit[i]
		end
		i += 1
	end

	return num_string

end



puts "How many bottle do you want?"
input_num = gets.chomp.to_i
bottles_count = input_num


while bottles_count > 2
	puts english_num(bottles_count) + "bottles of beer on the wall, " + english_num(bottles_count) + "bottles of beer."
	bottles_count = bottles_count - 1
  puts "Take one down and pass it around, " + english_num(bottles_count) + "bottles of beer on the wall."
  puts ""
end

puts "two bottles of beer on the wall, two bottles of beer."
puts "Take one down and pass it around, one bottle of beer on the wall."
puts ""
puts "one bottle of beer on the wall, one bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts ""
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, " + english_num(input_num) + " bottles of beer on the wall."
