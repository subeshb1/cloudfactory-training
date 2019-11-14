require 'sum_hash_values'
describe SumHashValues do
  describe '#sum' do
    let(:test_data) {
      [
        [{a:1,b:2,c:3},6],
        [{b:2,c:22,d:1},25],
        [{pen:5,c:5,d:10},20],
      ]
    }
    it 'returns the sum of hash values on given input' do
      test_data.each do |data|
        expect(SumHashValues.sum(data[0])).to eq(data[1])
      end
    end
  end
end