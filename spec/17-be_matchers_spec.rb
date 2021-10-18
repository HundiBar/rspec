RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to  be_truthy
    expect('Hello').to  be_truthy
    #etc all values truthy except false or nil
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to  be_falsy
  end
end
