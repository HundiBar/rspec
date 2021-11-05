attr_reader :cards
class Deck
  def self.build
    #implement business logic to build bunch of cards
  end

end

class CardGame
  def start
    @cards = Deck.build
  end
end

RSpec.describe '' do

end
