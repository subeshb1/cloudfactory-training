require 'fizz_buzz'

describe FizzBuzz do
  describe '#is_fizz?' do
    it 'should return true for multiple of 3' do
      (1..100).map { |x| x * 3 }.each do |x|
        expect(FizzBuzz.is_fizz?(x)).to be_truthy
      end
    end
  end
  describe '#is_buzz?' do
    it 'should return true for multiple of 5' do
      (1..100).map { |x| x * 5 }.each do |x|
        expect(FizzBuzz.is_buzz?(x)).to be_truthy
      end
    end
  end
  describe '#is_fizz_buzz?' do
    it 'should return true for multiple of 3 as well as multiple of 5' do
      [15, 30, 45].each do |x|
        expect(FizzBuzz.is_fizz_buzz?(x)).to be_truthy
      end
    end
  end
  describe '#fizz_buzz' do
    it 'should return array of Fizz, Buzz, FizzBuzz and other numbers' do
      expect(FizzBuzz.fizz_buzz(5)).to eq([1, 2, 'Fizz', 4, 'Buzz'])
      expect(FizzBuzz.fizz_buzz(16)).to eq([1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz', 16])
    end
  end
end
