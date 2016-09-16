# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module BasicFunctions

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
class SimpleCalculator
  include BasicFunctions
end

class FancyCalculator
  include BasicFunctions

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:

simple = SimpleCalculator.new
fancy = FancyCalculator.new

puts simple.add(1, 2)
puts fancy.add(1, 2)
puts simple.subtract(7, 5)
puts fancy.subtract(7, 5)
puts simple.multiply(2, 10)
puts fancy.multiply(2, 10)
puts simple.divide(27, 3)
puts fancy.divide(27, 3)
puts fancy.square_root(9)

