RSpec.describe 'start with and end with matcher' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
    end
  end

end
