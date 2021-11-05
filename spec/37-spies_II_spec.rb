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
