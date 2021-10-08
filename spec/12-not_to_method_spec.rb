RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    # expect(5).not_to eq(5) failing
    expect('Hello').not_to eq('hello') #passing
  end
end
