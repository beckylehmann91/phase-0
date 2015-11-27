# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
INPUT: Array of integers
OUTPUT: Array with the following substitutions:
- Multiples of 3 should be replaced with the string "Fizz"
- Multiples of 5 should be replaced with the string "Buzz"
- Multiples of 15 should be replaced with the string "FizzBuzz"

- Iterate through each element of the Array
- IF the element is divisible by 3 but not 5, return "Fizz" for the element
- ELSIF the element is divisible by 5 but not 3, return "Buzz"
- ELSIF the element is divisible by 15 (5 and 3), return "FizzBuzz"
- ELSE the element should remain as itself
- END IF
- Return the Array
=end

# Initial Solution

# def super_fizzbuzz(array)
#   array.map! { |num|
#     if num % 3 == 0 && num % 5 != 0
#       num = "Fizz"
#     elsif num % 5 == 0 && num % 3 != 0
#       num = "Buzz"
#     elsif num % 15 == 0
#       num = "FizzBuzz"
#     else
#       num = num
#     end
#   }
#   return array
# end

# super_fizzbuzz([0, 1, 2, 3])


# Refactored Solution
# Cleaned up the conditional statements within the block

def super_fizzbuzz(array)
  array.map! { |num|
    if num % 15 == 0
      num = "FizzBuzz"
    elsif num % 5 == 0
      num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    else
      num = num
    end
  }
  return array
end

super_fizzbuzz([0, 1, 2, 3])


# Reflection
=begin
What concepts did you review in this challenge?

I reviewed how to iterate through an array and alter values
using a conditional IF statement.

What is still confusing to you about Ruby?

This challenge was pretty straightforward, so here not too much is confusing.
However, I think some of the more advanced Ruby concepts and application
are confusing (making games, programs).

What are you going to study to get more prepared for Phase 1?

I want to keep practicing! I think with both JavaScript and Ruby I want to
redo the game challenges because those were the most difficult applications
for me.

=end