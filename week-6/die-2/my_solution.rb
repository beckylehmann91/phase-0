# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

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

The main differences were in the error message, the definition of the "sides" method, and the method used to create the "roll" method. More specifically, the error message checked for an empty array, the "sides" method needed to take the count of the @labels variable (unlike the previous challenge, where I could just return @sides) and the roll method used "sample" instead of "rand." Aside from these small differences, the logic was pretty much the same. I actually used most of the code from the previous challenge, then tweaked it to fit the needs of this challenge.

- What does this exercise teach you about making code that is easily changeable or modifiable?

It teaches me it's a great time saver! First of all, just looking at the pseudocode, one would be able to tell the logic of the two challenges is similar. Second, I learned how important it is to have readable and descriptive code. Since the behaviors were broken up into different methods, I was easily able to target and change any behaviors I wanted for the new challenge.

- What new methods did you learn when working on this challenge, if any?

In my refactored solution, I used "empty?" to determine whether the array was empty.

- What concepts about classes were you able to solidify in this challenge?

I'm starting to understand the structure and format of classes. I've run into the "initialize" method in the past, but never really knew what it meant. This challenge (and the previous challenge) helped to solidify that. I'll be interested to complete a challenge with multiple classes to understand which methods are placed in which classes.

=end