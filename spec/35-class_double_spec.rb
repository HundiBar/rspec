#mocking the class of Deck itself so class_double

# class Deck
#   def self.build
#     #implement business logic to build bunch of cards
#   end

# end

class CardGame
  attr_reader :cards
  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # using class double instead of double means double is as close as possible to real object as it compares to real object. Double will allow us to run non-existent methods in the class.

    #Will get an uninitialized constant Deck error as the constant is called Deck as an object so use a string to avoid that error.

    #as_stubbed_const make sure that all calls to class method Deck with the class double in deck_klass
    deck_klass = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const
    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end
