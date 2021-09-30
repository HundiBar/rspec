require '01-card'

RSpec.describe Card do
  # before do
  #   @card = Card.new('Ace', 'Spades')
  # end

  # def card
  #   Card.new('Ace', 'Spades')
  #   changes dont persist if write new info of rank
  # end

  let(:card) { Card.new('Ace', 'Spades') }
  #let(:x) { 1+1 } lazy loading -used when needed
  #let(:y) { x + 10 }

  it 'has a rank and that rank can change' do
    # y - if needed y then loads y then x then final y
    # expect(@card.rank).to eq('Ace')
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    # expect(@card.suit).to eq('Spades')
    expect(card.suit).to eq('Spades')
  end

end
