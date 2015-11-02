# Calculate the mode Pairing Challenge

# I worked on this challenge with Brian Wagner

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input?
# An array of integers or strings
# What is the output? (i.e. What should the code return?)
# An array of the most frequent value(s)
# What are the steps needed to solve the problem?
# Create an empty container
# Get the count of the items in the array
# Push the key value pairs into the container
# Scan container for mode value
# Put key value into array

# 1. Initial Solution

def mode(array)
  hash = Hash.new
  array.each do |x|
    quantity = array.count(x)
    hash[x] = quantity
  end
  mode_value = hash.values.max
  new_array= []
  hash.select do |key, value|
    if value == mode_value
      new_array.push(key)
    end
  end
  return new_array
end

# 3. Refactored Solution

def mode(array)
  hash = Hash.new
  array.each do |x|
    quantity = array.count(x)
    hash[x] = quantity
  end
  mode_value = hash.values.max
  new_array= []
  hash.select do |key, value|
    if value == mode_value
      new_array << key
    end
  end
  return new_array
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

We decided to use a hash to determine the mode. We found this to be a helpful data structure because they key/value pairs enabled us to tie the mode value to its corresponding argument in the original array. Once we determined the mode, we placed the corresponding key into an array, as the instructions requested.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I found this challenge to be more difficult. As an initial approach, my partner and I had two different perspectives. I predicted we would need to primarily use arrays to "sort out" the mode value, while he predicted we would need hashes. Ultimately, by talking through the instructions of the challenge and the potential approaches, we were able to pseudocode to determine what type of "list" we would need.

What issues/successes did you run into when translating your pseudocode to code?

It was pretty difficult to switch between arrays and hashes. We were both familiar with the "sort" and "max" functions of arrays and were unsure how to use similar methods with a hash. The key challenge was to determine the mode value, while still being able to tie that value back to its key (or keys, if there were multiple modes). By doing some research on finding "max" values in hashes, we were able to successfully arrive at a solution.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We found the "values" and "max" methods for hashes to be essential in creating a solution. We also found it necessary to use the "each" method to iterate through all elements of the original array. To be honest, I struggled a bit with the refactoring portion, as I wasn't sure how to use different methods to achieve the same outcome. That's not to say that my solution is the best or only way to solve the problem, but I think I need to do more research on methods in order to understand how to approach the problem differently. At this time, other methods are difficult to implement, but I'd like to come back to this problem later this week to see if I can solve it in a totally new way.

=end