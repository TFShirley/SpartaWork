require "mac/say"
class Duck

  @@duck_names = []

  attr_accessor :colour, :size
  attr_reader :name

  def initialize name, colour, size


    @name = name
    @colour = colour
    @size = size
    add_duck_name

  end

  def speak
    Mac::Say.say "Quack? My name is #{@name}"
    puts "My name is #{@name}"
  end

  def update_name name
    @name = name
    @@duck_names.push @name
  end

  def desc
    puts "My name is #{@name} and I'm a #{@colour} duck. All of the ducks are #{@@duck_names}"
  end

  def add_duck_name
    @@duck_names.push @name
    # print @@duck_names
  end

  def self.names_of_ducks
    @@duck_names
  end

end
