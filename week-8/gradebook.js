/*
Gradebook from Names and Scores
I worked on this challenge with Chris Guard.
This challenge took me 45 minutes.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

var gradebook = {};

gradebook["Joseph"] = {};
gradebook["Susan"] = {};
gradebook["William"] = {};
gradebook["Elizabeth"] = {};

gradebook["Joseph"]["testScores"] = scores[0];
gradebook["Susan"]["testScores"] = scores[1];
gradebook["William"]["testScores"] = scores[2];
gradebook["Elizabeth"]["testScores"] = scores[3];

gradebook.addScores = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook.addScores("Joseph", 80);

gradebook.getAverage = function(name){
  var select_nums = gradebook[name]["testScores"]
  average(select_nums)
};

var average = function(array_of_int) {
  var sum = 0
  for (var i = 0; i < array_of_int.length; i++) {
    sum += array_of_int[i];
    var average_grade = sum / array_of_int.length
  }
  console.log(average_grade)
}

console.log(gradebook);
gradebook.getAverage("Elizabeth")


// __________________________________________
// Refactored Solution

for(var counter = 0; counter < students.length; counter ++)
  gradebook[students[counter]] = {};

// for(var index = 0; index < students.length; index ++)
//  gradebook[students[index]]["testScores"] = scores[index];

gradebook["Joseph"]["testScores"] = scores[0];
gradebook["Susan"]["testScores"] = scores[1];
gradebook["William"]["testScores"] = scores[2];
gradebook["Elizabeth"]["testScores"] = scores[3];

gradebook.addScores = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name){
  var select_nums = gradebook[name]["testScores"]
  average(select_nums)
};

var average = function(array_of_int) {
  var total = array_of_int.reduce(function(a, b) {
    return (a + b) });
  total =  total / array_of_int.length;
  console.log(total);
}

gradebook.getAverage("Elizabeth");

// __________________________________________
// Reflect
/*
- What did you learn about adding functions to objects?

I thought it was interesting that for the getAverage function, we created a separate function to establish a general formula for calculating average. It does make me a bit more thoughtful about when I should create global functions versus functions nested in an object (or, what to include in each). I imagine if we were to have continued the code to include additional objects that needed to calculate function-specific averages, the basic “average” function would make the code more “DRY.”

- How did you iterate over nested arrays in JavaScript?

My partner and I used a couple different approaches for iterating over nested arrays in JavaScript. First, we added properties to the gradebook object and its nested objects by using bracket notation. This was effective, but a bit repetitive. In our refactored solution, we instead used a “for” loop to iterate through each item in the students array. This allowed us to create nested objects for each item, regardless of the length of the students array.

- Were there any new methods you were able to incorporate? If so, what were they and how did they work?

In our refactored solution, we used “reduce” to sum the elements in the “average” function. I have used reduce before in Ruby, but never in JavaScript. It allowed us to iterate through the array of integers without using a “for” loop.
*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)