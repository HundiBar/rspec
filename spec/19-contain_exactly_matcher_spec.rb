RSpec.describe 'contain_exactly matcher' do
  subject{ [1, 2,3 ] }
  describe 'long for syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)
      expect(subject).to contain_exactly(2, 1, 3)

      # expect(subject).to contain_exactly(1, 2)
      # failure as missing will show in rspec test
      # expect(subject).to contain_exactly(3, 2, 1, 4)
      # additional element fails in comparison


    end
  end
end
