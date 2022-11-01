class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    sum1 = self.a + self.b
    sum2 = self.b + self.c
    sum3 = self.a + self.c

    if (self.a <= 0 || self.b <= 0 || self.c <= 0 || sum1 <= self.c || sum2 <= self.a || sum3 <= self.b)
      raise TriangleError
    elsif (self.a == self.b && self.b == self.c && self.a != 0)
      return :equilateral
    elsif (self.a == self.b || self.a == self.c || self.b == self.c)
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError   
  end
end
