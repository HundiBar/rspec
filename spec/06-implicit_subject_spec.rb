RSpec.describe Hash do
  # use class when testing if can, instead of string as RSpec cant instantiate a string.
  #built in subject behind scences let(:my_hash) { Hash.new }

    it 'should start off empty' do
      expect(subjet.length).to eq(0)
      subject[:some_key] = "Some Value"
      expect(subject.length).to eq(1)
    end

    it 'is isolated between examples' do
      # New has instantiated. cached hash from above doesn't follow here.
      expect(subject.length).to eq(0)
    end
end
