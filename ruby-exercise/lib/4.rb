class SumTwoLargest
  def self.sum(arr)
    return 0 if arr.length < 2

    largest_index = SumTwoLargest.greater_index(arr)
    largest = arr[largest_index]
    arr.delete_at(largest_index)
    second_largest = arr[SumTwoLargest.greater_index(arr)]
    largest + second_largest
  end

  def self.greater_index(arr)
    return -1 if arr.empty?

    largest_index = 0

    (1..arr.length - 1).each do |i|
      largest_index = i if arr[largest_index] < arr[i]
    end
    largest_index
  end
end
