=begin


Release 1:


INPUT:
- title of list, item, qty
OUPTPUT:
- the list itself

CREATE a new method called create_list that accepts INPUT
  CREATE an empty list
END the method


INPUT:
- item, qty
OUPTPUT:
- the updated list
CREATE a method called add_item_qty that adds an item & its quantity to a list
  SET the item as the key of the list and qty as the     value
END the method

INPUT:
- item, qty
OUPTPUT:
- the updated list

CREATE a method called remove_item_qty that removes an item & its quantity from a list
  FIND the item and remove it from the list
END method


INPUT:
- item, qty
OUPTPUT:
- the updated list

CREATE a method called update_item_qty that updates a quantity for an item in the list
  FIND the item and update its qty
END method

INPUT:
- list name
OUPTPUT:
- printed list

CREATE a method called print_list that prints the list
  PRINT each item and its quanitity
END method

=end

def create_list
  Hash.new
end

def add_item_qty(list_name, item, quantity)
  list_name[item] = quantity
  list_name
end

def remove_item_qty(list_name, item)
  list_name.delete(item)
  list_name
end

def update_item_qty(list_name, item, new_quantity)
  list_name[item] = new_quantity
  list_name
end

def print_list(list_name)
  p list_name
end

# Uncomment this section to test the code
=begin
list = create_list
p add_item_qty(list, "Lemonade", 2)
p add_item_qty(list, "Tomatoes", 3)
p add_item_qty(list, "Onions", 1)
p add_item_qty(list, "Ice Cream", 4)
p remove_item_qty(list, "Lemonade")
p update_item_qty(list, "Ice Cream", 1)
print_list(list)
=end

# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4

=begin
Reflection:

- What did you learn about pseudocode from working on this challenge?

I learned it helps to establish the inputs and outputs for any given method. By thinking through the inputs and outputs, as well as the steps we needed to take to solve each part of the problem, my partner and I were able to write effective pseudocode. We referenced the pseudocode frequently once we started writing the code (made the actual coding much easier and faster).

- What are the tradeoffs of using Arrays and Hashes for this challenge?

Hashes are especially helpful for this challenge because they enable you to use key/value pairs. For something like a grocery list, where there is a descriptive key (item on the grocery list) with a clear corresponding value (quantity of the item), I believe a hash makes the most sense. An array would have allowed you to order the information as well, however it makes for a "messier" calling process. Also, the information displays a bit more cleanly with a hash.

- What does a method return?

A method returns the last evaluated expression within the method, or the explicitly defined return value, where applicable.

- What kind of things can you pass into methods as arguments?

You can pass pretty much any object into a method as an argument, such as a string, integer, array, hash, etc.

- How can you pass information between methods?

One way to pass information between methods is by using classes and instance variables. However, when you cannot use classes and instance variables (as in this challenge), you must pass information between methods by building upon what you've called outside of the methods. In this case, we created a variable "list" outside of all methods. From there, we were able to call each method, using "list" as the argument for the parameter "list_name."

- What concepts were solidified in this challenge, and what concepts are still confusing?

Initially, my partner and I had tried to establish local variables within the methods, then tried to call on them outside of the methods. This was unsuccessful, as local variables are only applicable within the method where they are defined. This helped to solidify my understanding of how to make methods "work" together by calling on them outside of the method (using their return values to build an edit the list). It also helped me to understand why programmers use classes and instance variables, as it can simplify this problem. The distinction between the various Ruby objects can be a bit confusing at times, and it may require further research and reading to understand where which applies.

=end