# Challenge #1
require './knapsack.rb'
def get_divisiors (number)
    (1..number/2)
    .select { |n| number % n == 0 }
end

    
def is_wierd_number? (number)
    divisiors = get_divisiors(number)    
    if divisiors.inject(0){|sum,x| sum +=x}  <= number
         false
    else
         knapsack(divisiors,number) != number
    end
end

for n in 10..100
    if (is_wierd_number?(n))    
        puts n
    end
end

puts [70, 836, 4030, 5830, 7192, 9272, 10430].map{|n| is_wierd_number?(n)} 
