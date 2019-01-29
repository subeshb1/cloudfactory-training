require '11'


describe Vehicle do
  describe '.age' do
    let(:car) {Vehicle.new('2011')}
    let(:suv) {Vehicle.new(2009)}
    it 'calculates age using private method' do
      expect(car.age).to eq(8)
      expect(suv.age).to eq(10)
    end
  end
end