chapter_num_length = 2
title_length = 40
page_num_length = 3
total_length = chapter_num_length + title_length + page_num_length + 15

puts "Table of Contents".center(total_length)
puts ""
puts "Chapter" + "1".rjust(chapter_num_length) + ":  " + "Getting Started".ljust(title_length) + "page" + "1".rjust(page_num_length)
puts "Chapter" + "2".rjust(chapter_num_length) + ":  " + "Numbers".ljust(title_length) + "page" + "9".rjust(page_num_length)
puts "Chapter" + "3".rjust(chapter_num_length) + ":  " + "Letters".ljust(title_length) + "page" + "13".rjust(page_num_length)
