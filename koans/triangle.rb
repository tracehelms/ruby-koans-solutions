# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError unless is_valid_triangle(a, b, c)
  if is_equilateral(a, b, c)
    return :equilateral
  elsif is_isosceles(a, b, c)
    return :isosceles
  else 
    return :scalene
  end
end

def is_valid_triangle(a, b, c)
  return false unless a > 0 and b > 0 and c > 0
  if (a + b <= c) or (a + c <= b) or (b + c <= a)
    return false
  end
  return true
end

def is_equilateral(a, b, c)
  return true if a == b and b == c
end

def is_isosceles(a, b, c)
  unless a == b and b == c 
    return true if a == b or b == c or a == c
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
