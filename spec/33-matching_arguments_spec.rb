RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    three_element_array = double #[1, 2, 3]
    allow(three_element_array).to receive(:first).with(no_args).and_return(1)
  end
end
