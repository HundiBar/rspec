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

end
