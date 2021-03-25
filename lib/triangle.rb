class Triangle
  attr_accessor :a, :b, :c
    def initialize (side1, side2, side3)
      @a = side1
      @b = side2
      @c = side3
    end
  def kind
      invalid_triangle
      if a == b && b == c && a == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end
  def invalid_triangle
      sides = [a,b,c]
      if sides.any? do |side|
        if side <= 0 || (sides[0] + sides[1] <= sides[2]) || (sides[1] + sides[2] <= sides[0]) || (sides[2] + sides[0] <= sides[1])
          raise TriangleError
        end
      end
    end
  end
    class TriangleError < StandardError
      def message
        “Invalid Triangle.”
      end
    end
  end