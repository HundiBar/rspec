RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end
  it 'can check for a specific error beinr raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10/0 }.to raise_error(ZeroDivisionError)

  end
end
