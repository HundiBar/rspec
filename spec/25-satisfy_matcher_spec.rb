RSpec.describe 'satisfy matcher' do
  # subject { 'racecar' }
  # show failed assertion to see custom error message
  subject { 'racecars' }


  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
      #can use { |value| value == value.reverse }
      # can be as complicated block as you like but just needs to return a boolean to pass or fail

    end
  end
end
