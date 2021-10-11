RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matchers' do
    it ' tests for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'equal cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)
      # both going to pass as type and values same.
      # but equal wont pass as c and d not the same location in memory.
      # they are two different boxes with same values and type of object inside
      # but two distinct boxes. e however, is set to equal c at that box so they are
      # equal in all ways and equal will pass.

      expect(c).to equal(e)
      #same test just different syntax
      expect(c).to be(e)

      expect(c).not_to equal(d)
      expect(c).not_to equal([1,2,3])
      #as same value  but not the same object in memory



    end

  end
end
