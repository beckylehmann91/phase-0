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



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.

# Capitalize first part of array
# Ends with period
# Every other word is lowercase



# 5. sentence_maker initial solution

def sentence_maker(array)
  x = 0
  sentence = ""
  while x < array.length
    if x == 0
      sentence += array[0].capitalize.to_s + " "
    elsif x == array.length - 1
      sentence += array[-1].downcase.to_s + "."
    else (x != array.length - 1) && (x != 0)
      sentence += array[x].downcase.to_s + " "
    end
    x += 1
  end
  return sentence
end

# 6. sentence_maker refactored solution