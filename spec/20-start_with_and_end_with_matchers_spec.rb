RSpec.describe 'start with and end with matcher' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
      #careful with case sensitivity
    end
    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe[:a, :b, :c, :d] do
    it 'should check for elements at beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      # if go further and have whole array check then can check for contains in if dont care about order
      # or use equality matcher to check exact order
      expect(subject).to end_with(:d)

    end
  end
end
