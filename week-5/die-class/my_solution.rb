# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: Instance variable @sides
# Output: Random roll (technically, I suppose the output is three methods, all of which achieve the objective of creating a random roll of the die).
# Steps:
# Define Die Class
# Create a method "initialize" to define any variables that will be used in the class ("@sides")
# Within the "initialize" method, also include an error message if the number of sides is less than one
# Create a method that will produce the number of sides as the output
# Create a method that will take the number of sides as its input and produce a random roll as the output


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides > 1
      @sides = sides
    elsif sides < 1
      raise ArgumentError.new("The number of sides cannot be less than one")
    end
  end

  def sides
    return @sides
  end

  def roll
    rand(@sides)
  end
end

# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("The number of sides cannot be less than one")
    else
      @sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
    1 + rand(@sides)
  end
end




# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

An ArgumentError can be raised if the argument doesn't meet established criteria, or if there are an incorrect number of arguments. In this case, we used one if the argument "sides" had less than one side. I often see ArgumentErrors pop up in the latter case, when there are an incorrect number of arguments. This is very helpful when you call on a method, as it will alert you that you are passing too much or not enough information (in the form of arguments).

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implemented the "rand" method. At first, I used the "rand" by itself, which produced an error. I found that by adding 1 to the rand, I was able to run the file through ruby without any issues.

What is a Ruby class?

A Ruby class is essentially a blueprint. It includes a variety of methods that serve similar or related purposes. They are very helpful when you are repeating certain actions over and over again, as they provide a "map" for what the code should do.

Why would you use a Ruby class?

You would use a Ruby class to group similar or related methods. It also allows you to incorporate instance variables to call upon variables between methods, while in the class. Using local variables does not allow you to do that.

What is the difference between a local variable and an instance variable?
Where can an instance variable be used?

A local variable can only be called upon within the module where it is defined. That is, if I create a local variable "name" within the method "best_friends," the variable could not be called in another method, "worst_enemies" (it could be recreated, but would be treated as an entirely new and distinct variable). Instance variables are established within Classes. They can be used within the class, and between methods within the class. In the previous example, if I had an instance variable @name, I could call the variable in both best_friends and worst_enemies, assuming both methods were in the same class.

=end