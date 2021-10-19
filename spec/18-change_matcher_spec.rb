RSpec.describe 'change matcher' do
  subject { [1,2,3] }

  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }
  end
end