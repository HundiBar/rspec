RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).add_return(15)

    expect(calculator.add).to eq(15)
  end
end
