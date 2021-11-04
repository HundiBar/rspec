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
      # added in extra method b on the double that isn't same as the actually Person. Need to be as close as possible.
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
    end
  end
  # Need to more cloesly align double and real object with RSpec verify with instance doubles
  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      # making a mock of any instance of the Person class not mocking Person class like above.
      # will fail as no b in Person class instance
      person = instance_double(Person, a: "Hello", b: 20)
    end
  end
end
