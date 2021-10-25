RSpec.describe 'include matcher' do
  describe 'hot choclate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end
    it {  is_expected.to include('choc') }
  end
end
