class Triangle

  

  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @count = 0
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def count
    if self.side1 == self.side2 
      @count += 1
    end

    if self.side2 == self.side3
      @count += 1
    end

    if self.side3 == self.side1
      @count += 1
    end

    @count
  end

  def kind
    if (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side1 + side3) <= side2
      raise TriangleError
    elsif side1 == 0 || side2 == 0 || side3 == 0
      raise TriangleError
    elsif side1 < 0 || side2 < 0 || side3 < 0
      raise TriangleError
    elsif self.count == 3 
      :equilateral
    elsif self.count == 0
      :scalene
    else 
      :isosceles
    end
  end

  class TriangleError < StandardError

  end

end
