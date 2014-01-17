puts "Please type starting year:"
start_year = gets.chomp.to_i
puts "Please type ending year:"
end_year = gets.chomp.to_i

i = start_year
leap_year_count = 0

puts "There's leap year below: "

while i <= end_year
	if i % 400 == 0 
		puts i
		leap_year_count = leap_year_count + 1
	elsif i % 100 == 0
	elsif i % 4 == 0
		puts i
		leap_year_count = leap_year_count + 1
	end
	i = i + 1
end

if leap_year_count == 0
	puts "There's no leap year between " + start_year.to_s + " and " + end_year.to_s
end