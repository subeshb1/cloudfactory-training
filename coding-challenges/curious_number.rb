# Challenge 5

def number_length(number)
    Math.log10(number).to_i + 1
end

def is_curious_number? (number)
    number ** 2 % (10 ** number_length(number) ) == number
end


puts is_curious_number?(25)
puts is_curious_number?(76)
puts is_curious_number?(212890625)
puts ""
puts is_curious_number?(1)
puts is_curious_number?(30)
puts is_curious_number?(10)
puts is_curious_number?(229348)