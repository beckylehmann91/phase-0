# Pad an Array

# I worked on this challenge with Brian Wagner.

# I spent 1 hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


=begin
# 0. Pseudocode
# What is the input?
An array, an integer (-->minimum size of the new array),
OPTIONAL argument for new content

# What is the output? (i.e. What should the code return?)
New array of the new size OPTIONAL w/ the specified content

# What are the steps needed to solve the problem?
-test size of the array --
IF size is min array then RETURN
ELSE
  OPTIONAL FOR PAD --> create a new variable to store the new array
  IF an element is specified, then padded element = that element
  -push items to array until it meets the min. size
  ELSE push nil to array
  END IF
END IF

=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    loop do array.push(value)
    break if array.length >= min_size
    end
  p array
  return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each { |x| new_array.push(x)}
  if new_array.length >= min_size
    return new_array
  else
    loop do new_array.push(value)
    break if new_array.length >= min_size
    end
  return new_array
  end
end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    loop do array << value
    break if array.length >= min_size
    end
  return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each { |x| new_array << x }
  if new_array.length >= min_size
    return new_array
  else
    loop do new_array << value
    break if new_array.length >= min_size
    end
  return new_array
  end
end

# 4. Reflection

=begin
- Were you successful in breaking the problem down into small steps?

Yes, the pseudocode was certainly helpful in doing that. By considering the inputs, outputs and steps to creating a solution, Brian and I were able to approach the code in a more structured way.

- Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We came up with a solution pretty quickly for both pad and pad!. However, we ran into issues at the beginning with the non-destructive version because the code was altering the object ID of the initial array. We found this was because we were equating "new_array" to "array," which altered the definition. In so doing, we were able to maintain the object ID of "array."

- Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

No, it was not. The main issue resulted from the error above (explanation included in previous response). Otherwise, we did not have any errors.

- When you refactored, did you find any existing methods in Ruby to clean up your code?

To be honest, I didn't find much to change when I refactored the code, I thought our initial solution was pretty clean and effective. However, I did play around with using different notation to achieve the same effect (ex. using << instead of push()). I tried using while and until loops to replace the "loop do," but came up with a bunch of errors.

- How readable is your solution? Did you and your pair choose descriptive variable names?

I think our solution is relatively readable. We tried to use variable names that correlated directly to the inputs and outputs within the challenge description.

- What is the difference between destructive and non-destructive methods in your own words?

A destructive method changes the original input variable. In the example we have here, the pad! method is destructive because it returns "array" in a different state than it was before the method was called. Non-destructive methods do not change the original variable. Therefore, in the pad method, the object ID of array remains the same before and after the method is called.

=end