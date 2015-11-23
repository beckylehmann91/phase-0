// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Darius Atmar.
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// __________________________________________
// Pseudocode

// Create function voteCount that will iterate through object votes, increment
// vote count.
// FOR each KEY within each PROPERTY of VOTES, need to iterate
// through and reference corresponding KEY in voteCount; insert
// value as a KEY and add 1 to its value
// title[name] is the vote cast. We want to add that string to the // corresponding property of voteCount. e.g. if we vote for Bob for // president we want to create a property inside
// voteCount[president] called "Bob". IF "Bob" is already in there,
// add 1 to its value. ELSE create the property "Bob"
    // IF voteCount[president]["Bob"] == undefined

// Once the votes have been tallied, assign each officer position the name of the
// student who received the most votes.

// __________________________________________
// Initial Solution

var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

function count(object) {
  for(var student in object) {
    var ballot = object[student];
      for(var title in ballot){
        var name = ballot[title];
        if (voteCount[title][name] === undefined)
          voteCount[title][name] = 1;
        else
          voteCount[title][name]++;
        console.log(voteCount[title]);
      }
  }
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

function callWinner() {
  for(var title in voteCount) {
    var winnerNumber = 0;
    var winner = undefined;
    for(var name in voteCount[title]) {
      if(winnerNumber < voteCount[title][name]) {
        winner = name;
        winnerNumber = voteCount[title][name];
      }
    }
    officers[title] = winner;
  }
}

count(votes);
callWinner();
console.log(officers)

// __________________________________________
// Refactored Solution

var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

function count(object) {
  for(var student in object) {
    var ballot = object[student];
      for(var title in ballot){
        var name = ballot[title];
        if (voteCount[title][name] === undefined)
          voteCount[title][name] = 1;
        else
          voteCount[title][name]++;
        console.log(voteCount[title]);
      }
  }
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

function callWinner() {
  for(var title in voteCount) {
    var winnerNumber = 0;
    var winner = undefined;
    for(var name in voteCount[title]) {
      if(winnerNumber < voteCount[title][name]) {
        winner = name;
        winnerNumber = voteCount[title][name];
      }
    }
    officers[title] = winner;
  }
}

count(votes);
callWinner();
console.log(officers)

// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

I found iterating over nested objects to be quite difficult in JavaScript, more difficult than it is for me in Ruby. While the "for...in" method was effective in accessing nested values, I found it to be quite confusing and tedious. There must be a better way!

Were you able to find useful methods to help you with this?

My partner and I used "for...in" quite a bit in this challenge. I found it to be somewhat cumbersome, honestly. It was easy to get lost in the levels of nesting, so my partner and I created more descriptive variable names to clarify the value we were getting at. I imagine something like recursion could potentially cut down on the amount of code (and confusion) involved, but I wasn't able to figure out how to write that.

What concepts were solidified in the process of working through this challenge?

The challenge helped to solidfy my knowledge of iterating over nested objects in JavaScript. It also pushed me to refine my JS syntax, as I found it easy to get lost with all the curly braces and semicolons. I definitely want to practice iterative functions/methods, in the next week.
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)