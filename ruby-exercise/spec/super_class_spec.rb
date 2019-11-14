require 'super_class'

describe SuperClass do
  describe '#child_count' do
    it 'returns the number of child instances created' do
      10.times { BaseClass.new }
      expect(SuperClass.child_count).to eq(10)
    end
  end
end