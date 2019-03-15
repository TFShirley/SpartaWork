class Circle

  attr_accessor :radius

  def initialize radius
    @radius = radius
  end

  def calc_area
    (@radius ** 2) * Math::PI
  end

  def calc_perim
    @radius * 2 * Math::PI
  end

  def scale scale_factor
    @radius *= scale_factor
  end

  def desc
    "Area: #{calc_area} Perimeter: #{calc_perim}"
  end

end
