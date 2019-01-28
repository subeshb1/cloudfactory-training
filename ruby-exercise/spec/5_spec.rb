require '5'

describe SquareArray do
  describe '#square' do
    it 'returns square of every array element in an array' do
      test_data = [
        [[1, 2, 3], [1,4,9]],
        [[], []],
        [[9], [81]],
        [[9, 4, 5, 2, 8],[81,16,25,4,64]]
      ]

      test_data.each do |data|
        expect(SquareArray.square(data[0])).to eq(data[1])
      end
    end
  end
end
