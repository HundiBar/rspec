RSpec.describe 'change matcher' do
  subject { [1,2,3] }

  it 'checks that a method changes object state' do
    # expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    # drawbacks - spec breaks on original example of subject\
    expect { subject.push(4) }.to change { subject.length }.by(1)
    #keeps test more adapatable, as increases by 1, not from x to y
  end

  it 'accepts negative arguemnts' do
    expect {  subject.pop }
  end
end
