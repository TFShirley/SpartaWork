require_relative "../animal"
require_relative "../animal_types/mammals"

class Racoon < Animal
  include Mammals
  # Can't "technically" inherit from a module, but can INCLUDE it...

  def speak
    puts "chitter!"
  end

  def no_of_legs
    Quadruped.legs
  end

end

steve = Racoon.new
steve.speak
steve.no_of_legs
