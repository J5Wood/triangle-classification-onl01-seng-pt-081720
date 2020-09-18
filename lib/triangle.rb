require 'pry'
class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one,side_two,side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  class TriangleError < StandardError
  end

  def kind
    binding.pry
    if 0 in (side_one, side_two, side_three)
      raise TriangleError
    elsif side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    else
      :scalene
    end
  end

end
