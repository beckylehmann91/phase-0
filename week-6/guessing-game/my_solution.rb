# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# Pseudocode

# Input: An integer, guess
# Output: A symbol, :high, :correct or :low, in comparison to the integer, answer
# Steps:
# Create GuessingGame class
# Initialize class with an an integer, answer
# Define an method GuessingGame#guess that takes guess as its input
# IF guess > answer
#   return :high
# ELSIF guess < answer
#   return :low
# ELSIF guess == answer
#   return :correct
# END IF
# Define method GuessingGame#solved?
# IF guess == correct
#   return true
# ELSE
#   return false
# END IF


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess == @answer
      return :correct
    elsif @guess > @answer
      return :high
    else
      return :low
    end
    return @guess
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess == @answer
      return :correct
    elsif @guess > @answer
      return :high
    else
      return :low
    end
    return @guess
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end


# Reflection
=begin
- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables have the ability to maintain state in an object, even across different methods. When using Object.new to create an object and write methods for each desired action, one must hard code values into certain methods. In the real world, hard coding is inflexible and unrealistic. In David Black's book, he gives the example of ticket prices. Using Object.new, one could hard code the value "$117.50" for ticket price. However, realisticially ticket prices are more fungible and subject to change.

- When should you use instance variables? What do they do for you?

One will most frequently see instance variables used within classes as a means of maintaining object state within those classes (as described in the example above). Instance variables can be defined as requisite parameters within the initialize method of the class. That way, when a new class is created, the user will be required to input values for the instance variables (in the example above, it could include @price, @venue, @date, etc.). The variables allow the user to evaluate multiple methods using those values. Also, outside of the initialize method, the instance variables can be reassigned values using setter methods. With the ticket example, if the user initially sets @date to 10/18/15, one could create a subsequent method to reassign the value of date:

def set_date(new_date)
  @date = new_date
end

That way, if the user needed to change the date to (11/15/15), he could simply call the set_date method.

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is the set of rules and programs used to define execution order. It includes things like conditional execution, looping, iteration and exceptions. Basically, in order to use flow control, a user must define a set of conditions and responsive behaviors based on those conditions. In this challenge, I primarily used conditional execution through IF statements. I generally don't struggle with IF statements, because I think they translate very well from pseudocode to code (they read much like the logic of non-coding language).

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols are immutable, which means it cannot be changed; once a symbol is created, it maintains its uniqueness. This differs quite a bit from strings, where one string, "becky," will have a different object ID than a second string, "becky." However, if I create a symbol, :becky, its object ID will remain consistent throughout the code. I think the code requires us to use symbols because it ensures consistency in meaning across the various methods. That is, :correct will always be :correct.

=end