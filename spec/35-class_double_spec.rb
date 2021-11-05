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
    # using class double instead of double means double is as close as possible to real object as it compares to real object. Double will allow us to run non-existent methods in the class.
    class_double('Deck', build: ['Ace', 'Queen'])
  end
end
