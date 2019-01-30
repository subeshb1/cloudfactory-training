class StringLengthHash
  def self.generate (str_arr)
    str_arr.each_with_object({}) do |key, hash|
        hash[key] = key.length
      end
    end
end