RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    double("Mr. Danger")
  end
end
