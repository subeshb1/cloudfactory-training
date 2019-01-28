require '1'

describe SumArray do
  let(:test_data){
    [
      [[1,2,3],6],
      [[2,3,4],9],
      [[1,2,3,4],10],
      [[],0]
    ]
  }
  describe '#sum' do
    it 'should return the correct output on given outputs' do 
      test_data.each do |data|
        expect(SumArray.sum(data[0])).to eq(data[1])
      end
    end
  end
end