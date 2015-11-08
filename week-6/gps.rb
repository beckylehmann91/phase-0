# Your Names
# 1) Becky Lehmann

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

# INITIAL SOLUTION: Including comments to explain what each section of code is doing
# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

# Establishes a hash, where three valid item_to_make are "cookie", "cake" and "pie," including associated ingredient quantities for one item
# Initializes error_counter of 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

# In the IF statement, library[food] will always evaluate to "nil" because it cannot be found in the hash as an array pair. It then compares library[food] to library[item_to_make]. If the item given is included in the hash (i.e. "cookie", "cake", or "pie"), the library[item_to_make] will produce the associated quantity_ingredients, causing the IF statement to be TRUE. As a result, the error_counter will decrease by 1, eventually evaluating to 0. If the item is not included in the hash, the IF statement will evaluate to FALSE because both sides will be nil. As a result, the error_counter will not decrease and will return 3.

  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

# Given the result of the block above, if the IF statement evaluates to 3 (is greater than 0), the code will produce an error message because the item_to_make is not one of the three incldued in the hash. If it is one of the 3 items, the statement should evaluate to 0, producing no error message.

  # serving_size = library.values_at(item_to_make)[0]
  # serving_size_mod = quantity_ingredients % serving_size

# Creates the variable serving_size to retrieve the value (order_quantity) for the given item_to_make. It achieves this by creating an array, inserting the associated value into the array, then calling on the value using a numerical index of 0.
# Creates variables serving_size_mod, assigns remainder value of order_quantity divided by the serving_size for the given item. This is essentially the leftover ingredients.

#   case leftover_ingredients
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity}/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# IF there are no leftover ingredients, it will tell you to create an exact number of the given item
# ELSIF there are leftover ingredients, it will tell you how many of the item you can make, as well as how much of the ingredients you have leftover. Potentially could implement feature to suggest other items to bake with the leftover ingredients.

# REFACTORED SOLUTION:

def serving_size_calc(item_to_make, quantity_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError, "#{item_to_make} is not a valid input" unless library.include?(item_to_make)

  serving_size = library[item_to_make]
  leftover_ingredients = quantity_ingredients % serving_size

  output = "Calculations complete: Make #{quantity_ingredients/serving_size} of #{item_to_make}"

  if leftover_ingredients > 0
    leftovers_output = output + ", you have #{leftover_ingredients} leftover ingredients."
    if leftover_ingredients == 5
      leftovers_output + "You could make one cake or five cookies with your leftovers."
    else
      leftovers_output + "You could make #{leftover_ingredients} cookie(s) with your leftovers."
    end
  else
    output
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# My guide suggested I begin by breaking down the existing code into chunks. I then went through each section and explained what the code was trying to do. Similar to writing pseudocode, I found that understanding the inputs and desired outputs of each section helped me to step away from the details of the existing code. When I refactored the code, I used these explanations to change the methods used, alter variable names and generally create cleaner, more readable code.

# Did you learn any new methods? What did you learn about them?

# While I had used "include?" and "unless" methods in the past, I found a more efficient way to use them in this challenge, with the help of my guide. Rather than using a conditional statement to specify outputs for whether or not the item_to_make was included in the hash, I used "include?" to assume and error UNLESS the item_to_make one of the hash keys.

# What did you learn about accessing data in hashes?

# I learned that for "each" methods, if you do not specify a key/value format within the block, the block will assume the "element" is an array of key/value pairs rather than just a key or value. Also, by using "include?" and "unless" as specified above, I learned a more efficient way of filtering out key/value pairs using boolean.

# What concepts were solidified when working through this challenge?

# It seems obvious, by my refactoring skills were definitely solidified in this challenge. My guide really challenged me to "dig deeply" into the existing code to understand what it was doing. From there, she encouraged me to think outside of the box to create new solutions (achieving the same outcomes). I have been pretty impatient with refactoring in the past, so this was a good challenge for providing structure to the process.