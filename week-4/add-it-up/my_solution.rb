# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Bryan Munroe.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

#PSEUDOCODE
# Input: Numbers in the array
# Output: Sum of all numbers in array
# Steps to solve the problem.

# Add up numbers in the array through n (total number of elements in the array)
# Using the length of the array

# 1. total initial solution

def total(array)
  x = 0
  while x < array.length
    array.each do |n|
      x += n
    end
  end
  return x
end

# 3. total refactored solution
=begin
The first one worked, but then I did some research on different methods in Ruby that could be more efficient. I found ones like "inject" and "reduce," and decided to go with reduce(:+). I also decided to try using array indexes rather than the length function: array[0..-1] establishes a range and references the first and last elements within the array.Seems to work out fine!
=end

def total(array)
  array[0..-1].reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: Sentence, including all strings within the array.
# Steps to solve the problem.

# 1) Capitalize first word in array
# 2) Ends with period
# 3) Every other word is lowercase

# 5. sentence_maker initial solution
def sentence_maker(array)
  array[0].capitalize!
  array.join(" ") << "."
end

# 6. sentence_maker refactored solution
# Combine two sections above into one line. Theoretically, capitalizing the array should be the same as capitalizing the first element (array[0])

def sentence_maker(array)
  array.join(" ").capitalize << "."
end