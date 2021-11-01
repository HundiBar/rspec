RSpec.describe 'firetruck' do
  it 'can check beginning and end with compund expectation' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end
