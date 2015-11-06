# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def add_five(array)
  array.map! do |element|
    if element.kind_of?(Array)
      element.map! { |inner| inner + 5 }
    else
      element + 5
    end
  end
end

p add_five(number_array)

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly(array)
  array.map! do |element|
    if element.kind_of?(Array)
      add_ly(element)
    else
      element = element + "ly"
    end
  end
end

p add_ly(startup_names)

# RELEASE 5: REFACTOR

def add_five(array)
  array.map! do |element|
    if element.kind_of?(Array)
      add_five(element)
    else
      element = element + 5
    end
  end
end

=begin
- What are some general rules you can apply to nested arrays?

In terms of accessing information within the arrays, I think it's best to first think through the logic of the nested arrays. Starting with the first array, determine how many elements there are. From there, start building out the numerical index references to the item you want.

- What are some ways you can iterate over nested arrays?

Our first approach was to iterate using nested each methods. This approach has limitations, however, because the more levels of nesting there are, the more each methods you need to include in the iteration. In our refactored approach, we decided to use recursion. This essentially referred the method back to itself, as long as the element within the each method was a kind of Array. The "else" portion of the statement included the "add five" functionality specified within the challenge. We found this to be the best method because it completes the iteration, regardless of the number of nesting levels.

- Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

Initially, I used methods I was more familiar with, combining IF statements and MAP to iterate through the nested arrays. In the refactored solution, my partner and I used recursion, which I am less familiar with. This ended up being a great option, as I mentioned before, because it allowed us to iterate regardless of the number of nested arrays.

=end