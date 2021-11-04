RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    #double is emulating array for our mocking
    # with(actual value), then return the array with first(number) should mock to
    three_element_array = double #[1, 2, 3]
    allow(three_element_array).to receive(:first).with(no_args).and_return(1)
    allow(three_element_array).to receive(:first).with(1).and_return([1])
    allow(three_element_array).to receive(:first).with(2).and_return([1, 2])
    # allow first to act on array but must be a value >=3 so first(3)
    # using our double to mock behaviour
    allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])


  end
end
