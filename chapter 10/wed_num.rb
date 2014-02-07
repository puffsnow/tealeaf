def unit_to_string num, unit_str

  return_str = ''

  ones_place = ['one'     , 'two'    , 'three', 
                'four'    , 'five'   , 'six', 
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
    if unit_str == "" && return_str != ""
      return_str += "and "
    end
    return_str += tens_place[(num / 10) - 1] + " "
    num = num % 10
  end
  if num > 10
    if unit_str == "" && return_str != ""
      return_str += "and "
    end
    return_str += teenagers[num - 11] + ' '
    num = 0
  end
  if num == 10
    if unit_str == "" && return_str != ""
      return_str += "and "
    end
    return_str += "ten" + ' '
    num = 0
  end
  if num > 0
    if unit_str == "" && return_str != ""
      return_str += "and "
    end
    return_str += ones_place[num - 1] + ' '
  end

  return_str += unit_str + ' '

  return return_str
end

def wedding_num num
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
      if num_string != ""
        num_string += "and "
      end
      num_string += unit_to_string unit_num[i], unit[i]
    end
    i += 1
  end

  puts num_string

end


puts wedding_num(213)
puts wedding_num(1543728)
puts wedding_num(2147483647)
