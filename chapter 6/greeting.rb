puts 'Hello there, type your full name, please.'

puts 'First, type your first name, please:'
first_name = gets.chomp

puts 'Type your middle name next:'
middle_name = gets.chomp

puts 'At last, type your last name, please:'
last_name = gets.chomp

letters_count = (first_name + middle_name + last_name).length

puts 'Did you know there are ' + letters_count.to_s + ' letters'
puts 'in your name, ' + first_name + ' ' + middle_name + ' ' + last_name + '?'
