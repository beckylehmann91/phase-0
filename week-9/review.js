// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

//
// INPUT:
// - title of list, item, qty
// OUPTPUT:
// - the list itself
// CREATE a new function called create_list that accepts INPUT
//   CREATE an empty list
// END the function

// INPUT:
// - item, qty
// OUPTPUT:
// - the updated list
// CREATE a method called add_item_qty that adds an item & its quantity to a list
//   SET the item as the key of the list and qty as the value
// END the function
//
// INPUT:
// - item, qty
// OUPTPUT:
// - the updated list
// CREATE a function called remove_item_qty that removes an item & its quantity from a list
//   FIND the item and remove it from the list
// END function
//
// INPUT:
// - item, qty
// OUPTPUT:
// - the updated list
// CREATE a function called update_item_qty that updates a quantity for an item in the list
//   FIND the item and update its qty
// END function
//
// INPUT:
// - list name
// OUPTPUT:
// - printed list
// CREATE a function called print_list that prints the list
//   PRINT each item and its quanitity
// END function

// INITIAL SOLUTION:
// Create list
var list = {};

function add_item_qty(listName, item, quantity) {
  listName[item] = quantity;
  console.log(listName);
}

function remove_item_qty (listName, item) {
  delete listName[item];
  console.log(listName);
}

function update_item_qty (listName, item, newQuantity) {
  listName[item] = newQuantity;
  console.log(listName);
}

function print_list(listName) {
  console.log(listName);
}

// REFACTORED SOLUTION:
// For refactored solution, removed "console.log" from functions
// Create list
var list = {};

function add_item_qty(listName, item, quantity) {
  listName[item] = quantity;
}

function remove_item_qty (listName, item) {
  delete listName[item];
}

function update_item_qty (listName, item, newQuantity) {
  listName[item] = newQuantity;
}

function print_list(listName) {
  console.log(listName);
}
add_item_qty(list, "Lemonade", 2);
add_item_qty(list, "Tomatoes", 3);
add_item_qty(list, "Onions", 1);
add_item_qty(list, "Ice Cream", 4);
remove_item_qty(list, "Lemonade");
update_item_qty(list, "Ice Cream", 1);
print_list(list);

/*
What concepts did you solidify in working on this challenge?
(reviewing the passing of information, objects, constructors, etc.)

I solidified my understanding of functions and objects in Javascript.
I would like to get a better understanding of how to use prototype and
constructor functions to achieve a similar result.

What was the most difficult part of this challenge?

I was able to arrive at a solution by building on information within the
driver code. However, I wasn't able to figure out how to use prototype and
constructor to build "instances" of the object.

Did an array or object make more sense to use and why?

I thought an object made more sense because it allowed me to use key/value pairs
(similar to a hash in Ruby) to tie items to quantities in the grocery list.
*/