# 1. subject will equal the object.new
#2
# subject(:sally) do
#   [1, 2, 3]
# end
#3 described_class helps by keeping the name generic so if the class name is changed in the future then only the class name and described_class assignment need to be changed. Not every test
#4
RSpec.describe 'test of 2' do
  subject(:test) do
    [1,2]
  end
  context 'testing two syntax' do
    it 'is equal to the test array' do
      expect(test).to eq([1, 2])
    end
    it { is_expected.to eq([1,2]) }
  end
end

