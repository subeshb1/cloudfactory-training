#FizzBuzz
class FizzBuzz
  def self.is_fizz?(number)
    (number % 3).zero?
  end

  def self.is_buzz?(number)
    (number % 5).zero?
  end

  def self.is_fizz_buzz?(number)
    (number % 3).zero? && (number % 5).zero?
  end

  def self.fizz_buzz(n)
    (1..n).map do |x|
      if FizzBuzz.is_fizz_buzz?(x)
        'FizzBuzz'
      elsif FizzBuzz.is_fizz?(x)
        'Fizz'
      elsif FizzBuzz.is_buzz?(x)
        'Buzz'
      else
        x
      end
    end
  end
end
