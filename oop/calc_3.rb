# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
simple = SimpleCalculator.new
fancy = FancyCalculator.new
whizard = WhizBangCalculator.new

puts simple.add(1, 2)
puts fancy.add(1, 2)
puts whizard.add(1, 2)
puts simple.subtract(7, 5)
puts fancy.subtract(7, 5)
puts whizard.subtract(7, 5)
puts simple.multiply(2, 10)
puts fancy.multiply(2, 10)
puts whizard.multiply(2, 10)
puts simple.divide(27, 3)
puts fancy.divide(27, 3)
puts whizard.divide(27, 3)
puts fancy.square_root(9)
puts whizard.square_root(9)
puts whizard.hypotenuse(3, 6)
puts whizard.exponent(3, 2)


