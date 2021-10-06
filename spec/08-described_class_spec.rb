class Prince
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe Prince do
  subject { described_class.new("Boris") }
  # dont hard code name of class.new use the described
  let(:louis) { described_class.new("Louis") }

  it 'represents a let: great person' do
    # expect(subject.name).to eq("Boris")
    expect(louis.name).to eq("Louis")
  end
  it 'represents explicit subjects great person' do
    expect(subject.name).to eq("Boris")
    # expect(louis.name).to eq("Louis")
  end
end
