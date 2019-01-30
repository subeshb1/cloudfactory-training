require 'string_length_hash'

describe StringLengthHash do
  describe '#generate' do
    context 'when array of strings are passed' do
      it 'returns hash with strings as key and length as value' do
        expect(StringLengthHash.generate(['aeroplane', 'bird', 'superman', 'desktop', 'documentation', 'board']
          )).to eq(
            {
              'aeroplane' => 9,
              'bird' => 4,
              'superman' => 8,
              'desktop' => 7,
              'documentation' => 13,
              'board' => 5
              }
              
          )
      end
    end
  end
end