chapter_num_length = 2
title_length = 40
page_num_length = 3
total_length = chapter_num_length + title_length + page_num_length + 15

title_array = ["", "Getting Started", "Numbers", "Letters"]
page_array = ["", "1", "9", "13"]

chapter_count = 1

puts "Table of Contents".center(total_length)
puts ""

while chapter_count <= 3
  puts "Chapter" + chapter_count.to_s.rjust(chapter_num_length) + ":  " + title_array[chapter_count].ljust(title_length) + "page" + page_array[chapter_count].rjust(page_num_length)
  chapter_count = chapter_count + 1
end
