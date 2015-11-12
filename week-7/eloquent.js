// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var firstname = "Becky", lastname = "Lehmann";
console.log(firstname + lastname);

prompt("What is your favorite food?", "");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle:

for (var triangle = "#"; triangle.length <= 7; triangle = triangle + "#")
console.log(triangle);

// Functions

// Complete the `minimum` exercise.

function min_number(x, y) {
  return Math.min(x, y);
};

console.log(min_number(4, 2));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Becky",
  age: 24,
  favorite_foods: ["ice cream", "soup", "salad"],
  quirk: "I watch Christmas movies year-round."
};