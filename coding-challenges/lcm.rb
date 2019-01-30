# Challenge 7

#  Only two numbers
def hcf (a,b)
   a == 0 ? b: hcf( b % a ,a)
end

# any number hcfs
def n_hcf (*numbers)
    numbers.inject(0){|res,next_num| hcf(res,next_num)}
end

# any number lcm
def lcm (*numbers)
    numbers.inject(1){|res,next_num| res*next_num / hcf(res,next_num)}
end

puts lcm(2,3,5)
puts lcm(1,2,3)
puts lcm(2,4,6)
puts lcm(2,4)
puts lcm(2,4,10)