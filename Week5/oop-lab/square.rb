class Square

  @@square_count = 0

  attr_accessor :length

  def initialize length
    # Instance variables
    @length = length
    count
  end

  def calc_area
    @length ** 2
  end

  def calc_perim
    @length * 4
  end

  def scale scale_factor
    @length *= scale_factor
  end

  def desc
    "Area: #{calc_area} Perimeter: #{calc_perim}"
  end

  def count
    # @@ is a class variable that belongs to the blueprint.
    @@square_count += 1
    puts "You have #{@@square_count} square(s)."
  end

  def self.square_count
    @@square_count
  end

end
