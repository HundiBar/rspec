RSpec.describe '#even? method' do
  context 'with even number' do
    subject { 5 }
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with odd number' do
    it 'should return true' do
      expect(5.even?).to eq(false)
    end
    it 'should not be accessible in this context' do
      expect(subject).to eq(5)
    end
  end
end
