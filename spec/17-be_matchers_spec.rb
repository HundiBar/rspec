RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to  be_truthy
    expect('Hello').to  be_truthy
    #etc all values truthy except false or nil
  end
end
