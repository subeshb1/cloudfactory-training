require '4'
describe SumTwoLargest do
  describe '#greater_index' do
    it 'returns largest number index' do
      test_data = [
        [[1, 2, 3], 2],
        [[], -1],
        [[1], 0],
        [[9, 4, 5, 2, 8],0]
      ]

      test_data.each do |data|
        expect(SumTwoLargest.greater_index(data[0])).to eq(data[1])
      end
  end
end
  describe '#sum' do
    it 'returns sum of two largest numbers in an array' do
      test_data = [
        [[1, 2, 3], 5],
        [[], 0],
        [[1],0],
        [[1,2], 3],
        [[9, 4, 5, 2, 8], 17]
      ]

      test_data.each do |data|
        expect(SumTwoLargest.sum(data[0])).to eq(data[1])
      end
  end
end
end