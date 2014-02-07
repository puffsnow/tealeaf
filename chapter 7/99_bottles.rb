bottles_count = 99

while bottles_count > 2
  puts bottles_count.to_s + " bottles of beer on the wall, " + bottles_count.to_s + " bottles of beer."
  bottles_count = bottles_count - 1
  puts "Take one down and pass it around, " + bottles_count.to_s + " bottles of beer on the wall."
  puts ""
end

puts "2 bottles of beer on the wall, 2 bottles of beer."
puts "Take one down and pass it around, 1 bottle of beer on the wall."
puts ""
puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts ""
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
