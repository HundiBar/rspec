RSpec.describe Array do
  subject(:sally) do
    ['one', 'two']
  end
  it 'has a length of 2' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'is isolated within an example' do
    expect(sally).to eq (['one', 'two'])
  end
end
