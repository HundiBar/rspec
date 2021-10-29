RSpec.describe 'the not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    #checks for same array in memory (equal)
    expect([1,2,3]).not_to equal([1,2,3])
    expect(10).not_to be_odd
    expect([1,2,3]).not_to be_empty

    expect(nil).not_to be_truthy

    expect("Philadelphia").not_to start_with('car')
    expect("Philadelphia").not_to end_with('city')


  end
end
