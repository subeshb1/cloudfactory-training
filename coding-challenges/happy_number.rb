# Challenge 4

def sum_square_digit (number)
    sum = 0
    while(number != 0)
        sum += (number %10) ** 2
        number = number/10
    end
    sum
end
# puts sum_square_digit(7)
# puts sum_square_digit(49)
# puts sum_square_digit(97)
# puts sum_square_digit(130)
# puts sum_square_digit(10)


def is_happy_number? (number)
    memo = {[number] => 1}
    next_number  = sum_square_digit(number)
    while(next_number != 1)
        if(memo.has_key?(next_number))
            return false
        else
            memo[next_number] = 1
            next_number = sum_square_digit(next_number)
        end
    end
    true
end

puts is_happy_number?(7)
puts is_happy_number?(10)
puts is_happy_number?(2)
puts is_happy_number?(10)
puts is_happy_number?(11)
puts is_happy_number?(13)
puts is_happy_number?(19)

