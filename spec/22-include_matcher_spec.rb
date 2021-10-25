RSpec.describe 'include matcher' do
  describe 'hot choc' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
    end
  end
end
