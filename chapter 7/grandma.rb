bye_count = 0

while true
  input_str = gets.chomp
  if input_str == "BYE"
    bye_count = bye_count + 1
    if bye_count == 3
      break
    end
  elsif input_str != input_str.upcase
    bye_count = 0
    puts "HUH?! SPEAK UP, SONNY!"
  else
    bye_count = 0
    year = 1930 + rand(21)
    puts "NO, NOT SINCE " + year.to_s + "!"
  end

end