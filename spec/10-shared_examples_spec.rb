RSpec.shared_examples 'a Ruby object with a length method returning 3' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
    #subject lazily loaded, so when subject added in in the tests subject used there.
  end
end
RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with a length method returning 3'
  # it 'returns the number of items' do
  #   expect(subject.length).to eq(3)
  # end
  # NOT DRY SO USE SHARED EXAMPLES
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with a length method returning 3'

  # it 'returns the number of items' do
  #   expect(subject.length).to eq(3)
  # end
end

RSpec.describe Hash do
  subject { {a: 1, b: 2, c:3} }
  include_examples 'a Ruby object with a length method returning 3'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples 'a Ruby object with a length method returning 3'
end
