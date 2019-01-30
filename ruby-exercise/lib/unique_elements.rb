class UniqueElements
  def self.generate(arr)
    arr.each_with_object({}) do |key, hash|
      if hash.key?(key)
        hash[key] += 1
      else
        hash[key] = 1
      end
    end
  end
end
