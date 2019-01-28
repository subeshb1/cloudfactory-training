require '3'

describe Sort do
  describe '#sort_numbers' do
    it 'sorts the given list of numbers in descending order' do
      test_data = [
        [[1,3,2],[1,2,3]],
        [[9,8,5,2],[2,5,8,9]]
      ]
      test_data.each do |data|
        expect(Sort.sort_numbers(data[0])).to eq(data[1])
      end
    end
  end
end