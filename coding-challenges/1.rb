# Challenge #1

def is_wierd_number? (number)
    (1..number/2)
    .select { |n| number % n == 0 }
    .inject(0){|sum,x| sum +=x}  > number
end

for n in 10..100
    if (is_wierd_number?(n))    
        puts n
    end
end