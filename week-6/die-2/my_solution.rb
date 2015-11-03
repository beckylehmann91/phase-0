# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Random string within array
# Steps:
# Define Die Class
# Create a method "initialize" to define any variables that will be used in the class ("@sides")
# Within the "initialize" method, also include an error message if Die.new is passed an empty array
# Create a method that will produce the number of sides as the output
# Create a method that will take the number of sides as its input and produce a random string within the array as the output

# Initial Solution

class Die
  def initialize(labels)
    if labels.length == 0
      raise ArgumentError.new("Array is empty, need to insert String")
    else
      @labels = labels
    end
  end

  def sides
    @sides = @labels.count
  end

  def roll
    @labels.sample
  end
end

# Refactored Solution
class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Array is empty, need to insert String")
    else
      @labels = labels
    end
  end

  def sides
    @sides = @labels.count
  end

  def roll
    @labels.sample
  end
end

# Reflection
=begin
- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?



- What does this exercise teach you about making code that is easily changeable or modifiable?
- What new methods did you learn when working on this challenge, if any?
- What concepts about classes were you able to solidify in this challenge?
=end