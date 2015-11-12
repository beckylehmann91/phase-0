// Manipulating JavaScript Objects

// I worked on this challenge by myself.

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {};
adam.name = "Adam";
terah.spouse = adam;
terah.weight = 125;
delete terah.eyeColor;
adam.spouse = terah;
var children = {};
terah.children = children;
var carson = {};
children.carson = carson;
carson.name = "Carson";
var carter = {};
children.carter = carter;
carter.name = "Carter";
var colton = {};
children.colton = colton;
colton.name = "Colton";
adam.children = terah.children;

// __________________________________________
// Reflection: Use the reflection guidelines
/*
- What tests did you have trouble passing? What did you do to make it pass? Why did that work?

I struggled a bit with the nested objects. When I didn't explicitly define the objects, I received an error that they were "undefined." I decided to define each as a variable with the object literal notation, then I added properties to each from there. However, I feel like there should be a better solution - it seems a bit inefficient, and for some reason in the output, the objects did not directly "copy" to the "adam" object.

- How difficult was it to add and delete properties outside of the object itself?

For the most part, it was not difficult. However, I did struggle a bit (as mentioned above) with the nested objects, as I was unable to directly assign values with the dot notation. I'd be interested to learn a more efficient/effective way of doing this, I wasn't able to find many suggestions online other than creating an object within an array.

- What did you learn about manipulating objects in this challenge?

I learned how to add and remove values with the dot notation. I also learned the distinction between manipulating the original code and manipulating the output. The repetition in the challenge (or, multitude of tasks) was really helpful - I'm eager to get more practice to become more comfortable with the structure and syntax of JS.

*/

// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)