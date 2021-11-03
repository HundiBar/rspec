class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you baby'
  end

  def fall_off_ladder
    "Call my agent no way"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

# Use a double to simulate an actor object
# Doubles dont need to follow difficult business logic
# just instance method behaviour

RSpec.describe Movie do
  # created an object that represents an actor but less complexity (ie real life API call, etc represented by sleep(3))
  let(:stuntman) { double("Mr.Danger", ready?: true, act: "Any string at all", fall_off_ladder: "Sure! Lets do it", light_on_fire: true)}
  subject { described_class.new(stuntman)}
end
