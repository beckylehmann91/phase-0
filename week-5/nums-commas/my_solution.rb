# Numbers to Commas Solo Challenge

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?

# The input is a positive integer

# What is the output? (i.e. What should the code return?)

# The output is a comma-separated integer as a string

# What are the steps needed to solve the problem?

# PRIMARY APPROACH:
# Convert Integer to String
# Split up into individual characters
# Reverse the String, then split characters into groups of three
# Join the individual groups of three
# Join the groups into one String, separating them with commas

# SECONDARY APPROACH:
# Identify the Integer ranges specified in the spec file
# Create nested IF statement
# IF Integer is less than 1000, it does not need a comma
# ELSIF Integer is between 1000 and 9999, it needs one comma after the first element
# ELSIF Integer is between 10000 and 99999, it needs one comma, starting after the second element
# ELSIF Integer is between 100000 and 999999, it needs one comma, starting after the third element
# ELSIF Integer is between 1000000 and 9999999, it needs two commas, after the first and fourth elements
# ELSIF Integer is between 10000000 and 99999999, it needs two commas, after the second and fifth elements
# END IF
# In each case, make sure to convert Integer to String

# 1. Initial Solution

def separate_comma(integer)
  if integer < 1000
    integer.to_s
  elsif integer >= 1000 && integer < 10000
    integer.to_s
    integer[0] + "," + integer[1..3]
  elsif integer >= 10000 && integer < 100000
    integer.to_s
    integer[0..1] + "," + integer[2..4]
  elsif integer >= 100000 && integer < 1000000
    integer.to_s
    integer[0..2] + "," + integer[3..5]
  elsif integer >= 1000000 && integer < 10000000
    integer.to_s
    integer[0] + "," + integer[1..3] + "," + integer[4..6]
  elsif integer >= 100000 && integer < 1000000
    integer.to_s
    integer[0..1] + "," + integer[2..4] + "," + integer[5..7]
  end
end

# 2. Refactored Solution
def separate_comma(integer)
  require "enumerator"
  integer.to_s.split(//).reverse.enum_for(:each_slice, 3).to_a.map(&:join).join(",").reverse
end

# 3. Reflection
=begin
- What was your process for breaking the problem down? What different approaches did you consider?

My first approach was to break up the string into its individual elements, then group them by three. Since commas are assigned from the back, I knew I would need to reverse the string to achieve this. I then needed to use "join" twice - once to combine the individual arrays of 3 strings, then again to join the whole string with commas. I struggled with this one for hours. In my research, I pretty quickly found a method "each_slice(num_slices)" that would do exactly what I wanted, but I kept getting errors on my terminal. When I couldn't get that solution to work, I went to my second plan which was to break the problem up into "if" statements, using the integer ranges specified in the commas_spec.rb file. I found this to be a much more "clunky" solution, a lot more writing and limitations on the number of digits it could evaluate in the integer. Once I finished my initial solution, I went back to my initial approach. I finally found a way to make the enumerator work, putting "require 'enumerator'" at the start of the method. From there, I was able to arrive at a solution using my initial logic.

- Was your pseudocode effective in helping you build a successful initial solution?

As described above, I didn't achieve my initial approach until the refactored solution. However, thinking through the steps I needed to take to arrive at the solution (and the order of the steps) was incredibly helpful. Since my refactored solution is essentially a string of methods, I found it helpful to pseudocode the different elements that needed to be incldued. The pseudocode was less helpful when I moved to my "back up" plan. It helped me to walk through the steps, but the code itself is pretty intuitive.

- What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I will live by the "each_slice" enumerator from now on! It proved incredibly helpful in my refactored solution, especially when I realized I needed to include the "require 'enumerator'" piece. I mentioned some of my difficulties with "each_slice" in the responses above. At one point, I was struggling to figure out how to join the elements within the individual arrays. I found the ".map(&:join)" method to be very helpful there. Each of these significantly changed the way my code works. The code is more flexible (can interpret larger integers than the parameters specified in the spec file) and more cogent.

- How did you initially iterate through the data structure?

As described above, I initially iterated through the data structure using a long "if" statement, providing numerical ranges as the conditions.

- Do you feel your refactored solution is more readable than your initial solution? Why?

Absolutely. Because the methods themselves are pretty descriptive ("reverse", "join"), one can walk through the logic of the code step by step to understand what conversions/changes are made to the code. Also, the code is much shorter, which makes it faster and less overwhelming to read.

=end