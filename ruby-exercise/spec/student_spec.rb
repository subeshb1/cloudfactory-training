require 'student'

describe Student do
  let(:ram) {Student.new('Ram','A')}
  let(:shyam) {Student.new('Shyam','B')}
  let(:gita) {Student.new('Gita','C')}
  let(:sita) {Student.new('Sita',1)}
  describe '.better_grade_than?' do
    context 'when a student is passed' do
      it 'returns false if the passed student has better grade' do
        expect(gita.better_grade_than?(ram)).to be_falsey
        expect(shyam.better_grade_than?(ram)).to be_falsey
        expect(sita.better_grade_than?(ram)).to be_falsey
      end
      it 'returns true if the passed student has low grade' do
        expect(ram.better_grade_than?(gita)).to be_truthy
        expect(ram.better_grade_than?(shyam)).to be_truthy
      end
    end
  end
end