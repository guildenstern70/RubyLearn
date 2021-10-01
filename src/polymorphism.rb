#
# RubyLearn
# (c) Alessio Saltarin 2017-2021
#
# This software is distributed under MIT License
# See LICENSE file
#


# Base abstract Shape class
class Shape
  def area
    raise 'area method should be called by Shape inheritors'
  end
end

# Circle class implements Shape
class Circle < Shape
  attr_accessor :radius

  def area
    (radius * radius * Math::PI)
  end
end

# Square class implements Shape
class Square < Shape
  attr_accessor :side

  def area
    (side * side)
  end
end

def polimorphic_method(shape)
  shape.area
end

def all_together_now
  a_circle = Circle.new
  a_circle.radius = 21.0
  a_square = Square.new
  a_square.side = 12
  a_circle_area = polimorphic_method(a_circle)
  a_square_area = polimorphic_method(a_square)
  puts("The area of the circle with radius = #{a_circle.radius} is #{a_circle_area}")
  puts("The area of the square with side = #{a_square.side} is #{a_square_area}")
  (a_circle_area + a_square_area)
end
