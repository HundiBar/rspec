class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage
  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end

RSpec.describe Garage do
  let(:car) { instance_double(Car) }

  before do
    # dont let Ruby create with 'new' class method, to intercept and return 'car' instance double
    allow(Car).to receive(:new).and_return(car)
  end
  it 'adds a car to its storage' do
    subject.add_to_collection('Honda Civic')
    # check car has received 'new' and check storage array
    expect(Car).to have_received(:new).with("Honda Civic")
    expect(subject.storage.first).to eq(car)
  end
end

#end of course
