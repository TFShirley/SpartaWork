class Rectangle

  attr_accessor :width, :height

  def initialize width, height
    @width = width
    @height = height
  end

  def calc_area
    @width * @height
  end

  def calc_perim
    (@width + @height) * 2
  end

  def scale scaled_factor
    @width *= scaled_factor
    @height *= scaled_factor
  end

  def desc
    "Area: #{calc_area} Perimeter: #{calc_perim}"
  end


end
