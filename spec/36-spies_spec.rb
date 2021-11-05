# spies follow different pattern compard to doubles
# doubles write expectation before the action been invoke
#spy writes after action
#Spies automatically observe all messages received even if not explicitly told

RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that a message has been received' do
    # double syntax expect before method call
    # expect(animal).to receive(:eat_food)
    # animal.eat_food
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'resets between examples' do
    expect(animal).not_to have_received(:eat_food)
  end
end
