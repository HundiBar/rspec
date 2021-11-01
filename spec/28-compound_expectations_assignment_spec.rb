RSpec.describe 'firetruck' do
  it 'can check beginning and end with compund expectation' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end

RSpec.describe 20 do
  it {  is_expected.to be_even.and respond_to(:times) }
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'can check multiple values' do
    expect(subject).to include(42).and start_with(4,8,15)
  end
end
