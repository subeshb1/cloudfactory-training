# Simple Method

def split_number(number, partition)
  max_num = number - (partition - 1)
  arr = [max_num]
  (partition - 1). times do
    arr.push(1)
  end
  arr
end

puts split_number(100, 5)
