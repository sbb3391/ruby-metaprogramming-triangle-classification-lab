require_relative '../lib/triangle.rb'

triangle = Triangle.new(3,4,4)

p triangle.side1
p triangle.side2
p triangle.side3

p triangle.side1 == triangle.side2
p triangle.side2 == triangle.side3
p triangle.side3 == triangle.side1
p triangle.count