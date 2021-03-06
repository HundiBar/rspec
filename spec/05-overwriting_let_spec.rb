require '05-programming'

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }
    # default in Class = Ruby so dont need to use param for .new().
    it 'should default to Ruby as the name' do
    expect(language.name).to eq('Ruby')
    end
  end
end
