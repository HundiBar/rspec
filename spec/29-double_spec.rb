RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stuntman = double("Mr. Danger")

    stuntman.fall_off_ladder
  end
end
