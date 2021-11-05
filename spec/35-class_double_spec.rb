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

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    class_double(Deck, build: ['Ace', 'Queen'])
  end
end
