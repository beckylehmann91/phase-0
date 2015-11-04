# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

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



- When should you use instance variables? What do they do for you?

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?

=end