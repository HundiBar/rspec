RSpec.describe 'include matcher' do
  describe 'hot choc' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')

    end
  end
end
