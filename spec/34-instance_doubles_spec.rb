# Rspec verifies that the object your mocking matches your double
class Person
  def a
    #mock complex system takes 3 secs
    sleep(3)
    "Hello"
  end

end
RSpec.describe 'instance doubles' do

end
