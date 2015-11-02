# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  new_array = [[],[]]
  source. each do |x|
    if x.is_a?(Integer)
      new_array[0].push(x)
    else
      new_array[1].push(x)
    end
  end
  return new_array
end

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]

def my_hash_splitting_method(source, age)
  new_array = [[],[]]
  source.each do | key, value |
    if value <= age
      new_array[0].push([key, value])
    else
      new_array[1].push([key, value])
    end
  end
  return new_array
end

# Identify and describe the Ruby method(s) you implemented.
=begin
In both cases, I first created a multidimensional array to capture the objects that did or did not fulfill the conditions specified within the challenge. In the integer portion, I used ".is_a?(Integer)" to filter out any integer values. I then used the ".push" method to insert the integer values into the first array, and any other values into the second. I was able to reference the first and second arrays using index values 0 and 1 for new_array. In the second example, I used a similar process, sorting the arrays by age instead (here, I use the variable "age" rather than the hard-coded value of "4" given in the challenge). In this example, I needed to push the key/value pairs as arrays into new_array[0] and new_array[1], which I achieved by bracketing the "key, value" within the push method.
=end


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
=begin
Generally, I've found that in a challenge where you will be pushing various objects into an array, it can be helpful to start off with an empty array. In this case, I needed to create multidimensional arrays, which is something you'll want to consider at the start of a given challenge. Next, I used the ".each" method to iterate through all the elements within the array and hash. Similarly to methods like "find" and "select," "each" can help you to filter out elements that meet (or do not meet) given criteria. If you use a method like "select" by itself, it will filter out only the values that meet the criteria. In this case, I wanted to "keep" the non-fitting values and push them into a separate array. If you want to keep those "non-fitting" values, if statements can be very helpful.
=end

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
=begin
I found that explaining my thought process actually helped to solidify my own understanding of the material. I believe there's some idiom along the lines of, "the best way to learn is to teach," and I certainly found that to be true in this case. As for researching, I found it most effective to first identify the steps I needed to take to reach a solution. In this case, I needed to create an empty multi-dimensional array, iterate through the array or hash to filter based on given criteria, then push elements into separate arrays. If at any point I was confused, I was able to research specific steps in the process to better my understanding, rather than just trying to find the entire solution online.
=end