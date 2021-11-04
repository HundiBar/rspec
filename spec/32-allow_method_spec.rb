RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).add_return(15)
    expect(calculator.add).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    # when sum called always returns 10
    allow(arr).to recieve(:sum).and_return(10)
    # test fails for real sum as RSpec steps in and mocks the sum method
    expect(arr.sum).to eq(6)

    #all other arr methods are working normally, just mocked sum
    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])

    # use allow to mock a complicated method on an object to stop the lengthy/complex real method when tested.

  end
end
