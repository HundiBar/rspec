RSpec.describe 'the not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    #checks for same array in memory (equal)
    expect([1,2,3]).not_to equal([1,2,3])
    expect(10).not_to be_odd


  end
end
