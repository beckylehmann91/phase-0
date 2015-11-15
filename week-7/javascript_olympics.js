// JavaScript Olympics

// I paired with James Artz on this challenge.

// This challenge took me 2.5 hours.


// Bulk Up

var athletes = {
  name: {},
  event: {}
};

function win(athletes) {
  return athletes.name + " wins the " + athletes.event;
}

athletes.name = "Sarah Hughes";
athletes.event = "Hurdles";

console.log(win(athletes));


// Jumble your words

function reverse_string(string) {
  return string.split('').reverse().join('');
}

console.log(reverse_string("James"));


// 2,4,6,8

var inputArray = [1, 3, 4, 6, 7, 9, 8];
var evens = [];

for (var counter = 0; counter < inputArray.length; counter++) {
  if ((inputArray[counter] % 2) === 0) {
    evens.push(inputArray[counter]);
  }
}

console.log(evens);

// refactor for 2,4,6,8

var newEvens = inputArray.filter(function(number) {
  return (number % 2 === 0);
});

console.log(newEvens);

// top-secret
// var es2015Evens = inputArray.filter(n => n % 2 === 0);

// console.log(es2015Evens);


// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}


// DRIVER CODE

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


// Reflection

/*
- What JavaScript knowledge did you solidify in this challenge?

This challenge helped solidify my understanding of how to create functions in JavaScript. It's been a bit of an adjustment, moving from JavaScript to Ruby, and I'm not totally comfortable with the structure and syntax yet. I'm not sure I completely understand the difference between function declaration and expression, or the difference between literal and constructor functions, but this challenge is helping me get there.

- What are constructor functions?

Constructor functions represent one form of notation for creating objects in JavaScript. They are typically used if a programmer needs to do initial work before an object is created, or if multiple instances of the object will be used in the code. For that reason, when an object is called with a constructor function, the programmer must instatiate the object first. He would do this by declaring a new variable, then assigning in a "new" instance of the object. Basically, if a programmer needs independent and distinct instances of an object, he should use constructor functions. If he plans to use only one definition of the object throughout the code, he should use literal notation.

- How are constructors different from Ruby classes (in your research)?

According to an article I read by Adam Stanton, the key difference between JavaScript and Ruby with object creation has to do with the type of interaction between objects. In Ruby, a Class establishes certain objects to be inherited, which each instance will take on once created. In JavaScript, new objects can be created through constructors. They then inherit behaviors by referencing the prototype object of the constructor function. One can change the established behaviors by adding properties to the prototype. I think Ruby achieves a similar result through the objects and methods within the given class. I'm hoping this will become clearer to me as I get more experience with constructor functions.

*/