# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Chris Gomes.
# I spent 3 hours on this challenge.

# Pseudocode

# Input: Array of integers (16 digits)
# Output: 1) Array of integers, every other integer doubled, starting with the second to last integer, then 2) Array of integers, where all characters are separate, then 3) Sum of all integers, and finally 4) Total divided by ten, including the remainder

# Steps:

# - Create a class CreditCard
# - Initialize with the variable card_number (integer), including error message if number is not exactly 16 digits
# - Define method double_digits
#   - Push integer into an array
#   - Reverse array
#   - Starting with a reference to the second element, double any odd-index elements
# - Define method sum_digits
#   - Split double-digit numbers into separate characters
#   - Convert to Integer
#   - Sum integers in array
# - Define method check_card
#   - IF sum is divisible by 10
#       then true
#     ELSE
#       false
#     END IF

# Initial Solution



# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    card_string = card_number.to_s
    card_digits = card_string.split(//)
    if card_digits.size == 16
      @card_number = card_digits
    else
      raise ArgumentError.new("Card number needs to be 16 digits.")
    end
  end

  def double_digits
    reverse_digits = @card_number.reverse
    for i in 0..15
      if i % 2 == 1
        reverse_digits[i] = 2 * reverse_digits[i].to_i
      else
        reverse_digits[i] = reverse_digits[i].to_i
      end
    end
    @reverse = reverse_digits
  end

  def sum_digits
    sum = 0
    @reverse.each { |i|
      if i <= 9
        sum += i
      else
        sum += (1 + (i % 10))
      end
    }
    return @sum = sum
  end

  def check_card
    double_digits
    sum_digits
    if ((@sum.to_i % 10) == 0)
      return true
    else
      return false
    end
  end
end

# Refactored Solution

class CreditCard

  def initialize(card_number)
    card_digits = card_number.to_s.chars.map(&:to_i)
    raise ArgumentError.new("Card number needs to be 16 digits.") unless card_digits.size == 16
    @card_number = card_digits
  end

  def double_digits
    reverse_digits = @card_number.reverse
    for i in 0..15
      reverse_digits[0..15] = 2 * reverse_digits[i].to_i if i % 2 == 1
    end
    @reverse = reverse_digits
  end

  def sum_digits
    sum = 0
    @reverse.each { |i|
      if i <= 9
        sum += i
      else
        sum += (1 + (i % 10))
      end
    }
    return @sum = sum
  end

  def check_card
    double_digits
    sum_digits
    if ((@sum.to_i % 10) == 0)
      return true
    else
      return false
    end
  end
end

p card = CreditCard.new(4408041234567906)
p card.double_digits
p card.sum_digits
p card.check_card


# Reflection

# What was the most difficult part of this challenge for you and your pair?

# My partner and I struggled with the last method of the class, check_card. Our code kept failing one of the tests (returned true instead of false). We resolved this by calling the two previous methods (double_digits and sum_digits) within the check_card method. Overall, I struggled to find an efficient yet effective way to achieve our end goal. I think my code is somewhat difficult to read.

# What new methods did you find to help you when you refactored?

# I shortened the initialize method by using "map(&:to_i)" in order to convert the string of digits into integers. I also used an "unless" statement to shorten the IF statement in the initial solution into one line. In double digits, I also refactored the IF statement to fit into one line.

# What concepts or learnings were you able to solidify in this challenge?

# I think pseudocode really came in handy with this challenge. Since the challenge is pretty complex and multiple steps are needed to arrive at the ultimate solution, I found it incredibly helpful to walk through each segment with Chris. This challenge also pushed me to think outside of the box. A simple or efficient solution really didn't become clear to me during this challenge. As a result, Chris and I needed to think of creative/innovative ways to reach the end goal.