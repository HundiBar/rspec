# Rspec verifies that the object your mocking matches your double
class Person
  def a
    #mock complex system takes 3 secs
    sleep(3)
    "Hello"
  end

end
RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
    end

  end
end
