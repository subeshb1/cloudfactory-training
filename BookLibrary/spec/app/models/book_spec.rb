# frozen_string_literal: true

require 'rails_helper'
# Testing Book
describe Book do
  describe '.length' do
    context 'when book name is provided' do
      it 'returns length of book title' do
        data = [
          ['English', 7],
          ['Math', 4],
          ['Science', 7],
          ['Statistics', 10]
        ]
        data.each do |input|
          expect(Book.length(input[0])).to eq(input[1])
        end
      end
    end
  end

  describe '.list' do
    context 'when book name is provided' do
      let!(:author) { Author.create!(name: 'Ram') }
      let!(:book) { Book.create!(CreateBooks: 'English', author_id: 1) }
      it 'returns list of book ' do
        expect(Book.all.to_a.size).to eßq(1)
        expect(Book.list('English')).to eq(['English'])
      end
    end
  end
end
