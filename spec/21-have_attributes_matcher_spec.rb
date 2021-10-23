class ProfessionalWrestler
  attr_reader :name, :finishing_move
  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end
RSpec.describe 'have attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold', 'Stunner')

end
