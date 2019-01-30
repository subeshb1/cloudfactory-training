class SumHashValues
  def self.sum(hash)
    sum = 0
    hash.each do |key, value|
      sum += value
    end
    sum
  end
end