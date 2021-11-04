RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).add_return(15)
    expect(calculator.add).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    expect(arr.sum).to eq(6)
  end
end
