# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
# INPUT: Integer between 0 and 100
# OUTPUT: String, number as a word
# Create three data structures to hold English equivalents:
    # - A tens_place structure to hold the tens place value, when the number is divided by 10
    # - A teens structure for any values 10 - 19, as they have a unique English pattern
    # - A ones_place structure for the remainder value when the number is NOT a teen and is not evenly divisible by 0 (ex. 24)
# To determine "tens place" word equivalent, find the result of the number divided by 10
#   IF the number / 10 == 1, the number is a teen and should find the matching value in the teens structure
#   ELSE find the numbers "tens place" value in tens_place
# To determine the "ones place" word equivalent in the ELSE case, find the remainder value in ones_place

# Initial Solution

# def in_words(num)
#   tens_place = {
#     10 => "one hundred ",
#     9 => "ninety ",
#     8 => "eighty ",
#     7 => "seventy ",
#     6 => "sixty ",
#     5 => "fifty ",
#     4 => "forty ",
#     3 => "thirty ",
#     2 => "twenty ",
#     0 => ""
#   }

#   teens = {
#     10 => "ten",
#     11 => "eleven",
#     12 => "twelve",
#     13 => "thirteen",
#     14 => "fourteen",
#     15 => "fifteen",
#     16 => "sixteen",
#     17 => "seventeen",
#     18 => "eighteen",
#     19 => "nineteen",
#   }

#   ones_place = {
#     0 => "",
#     1 => "one",
#     2 => "two",
#     3 => "three",
#     4 => "four",
#     5 => "five",
#     6 => "six",
#     7 => "seven",
#     8 => "eight",
#     9 => "nine"
#   }

#   if num / 10 == 1
#     teens[num]
#   else
#     tens_place[(num / 10)] + ones_place[(num % 10)]
#   end
# end

# puts in_words(42)
# puts in_words(67)
# puts in_words(16)

# Refactored Solution

def in_words(num)
# Added hundreds_place to expand application
  hundreds_place = {
    0 => "",
    1 => "one hundred ",
    2 => "two hundred ",
    3 => "three hundred ",
    4 => "four hundred ",
    5 => "five hundred ",
    6 => "six hundred ",
    7 => "seven hundred ",
    8 => "eight hundred ",
    9 => "nine hundred "
  }

  tens_place = {
    0 => "",
    2 => "twenty ",
    3 => "thirty ",
    4 => "forty ",
    5 => "fifty ",
    6 => "sixty ",
    7 => "seventy ",
    8 => "eighty ",
    9 => "ninety ",
  }

# Rewrote teens to make ascending, matching the
# pattern of the other hashes
  teens = {
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
  }

  ones_place = {
    0 => "",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine"
  }

  if num / 10 == 11 || num / 10 == 1
    hundreds_place[(num / 100)] + teens[num]
  else
    hundreds_place[(num / 100)] + tens_place[(num / 10)] + ones_place[(num % 10)]
  end
end

puts in_words(223)
puts in_words(917)
puts in_words(14)
puts in_words(145)


# Reflection:

# What concepts did you review or learn in this challenge?
#
# I reviewed using hashes in Ruby, creating and
# calling methods, using IF statements and basic
# arithmetic.
#
# What is still confusing to you about Ruby?
#
# It was a bit of an adjustment coming back to Ruby
# after two weeks of JavaScript. I mixed up some of
# the basic syntactic elements of the languages and
# even needed to look up method structures. I think
# the more I can practice studying multiple languages
# at once, ensuring that each one is "fresh" in my
# mind, the better off I'll be in the future.
#
# What are you going to study to get more prepared for Phase 1?
#
# I think practical application is the best way to
# learn a language. For Ruby, I plan to do several
# of the review challenges. The more I can practice
# reading a problem, thinking through the logic
# with pseudocode and creating a solution through
# code, the more prepared I will be for the on-site
# session.