# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# The input is a positive integer
# What is the output? (i.e. What should the code return?)
# The output is a comma-separated integer as a string
# What are the steps needed to solve the problem?
# Convert integer to string
# Split up into individual characters
# Join every three characters, separated by a comma, starting from the back

# 1. Initial Solution

  def separate_comma(integer)
    new_string = integer.to_s.split(//).reverse
    num_iterations = new_string.length / 3
    p num_iterations
    x = 0
    n = x + 2
    loop do
      x += 3
      new_string[x..n].join
      break if n >= new_string.length
    end
  end

p separate_comma(10000000000)

# 2. Refactored Solution




# 3. Reflection