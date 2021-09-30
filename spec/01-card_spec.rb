require '01-card'

RSpec.describe Card do
  it 'has a type' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
    expect(card.suit).to eq('Spades')
  end
end
