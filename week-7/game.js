 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Santa has packed his sleigh and is about to fly out of the North Pole when several presents fall out of the sleigh! The Christmas elf must get to the fallen present before the evil Grinch gets to him.
// Overall mission: Collect Santa's gifts that have fallen out of the sleigh.
// Goals: Grab items, return to sleigh, avoid the Grinch
// Characters: Elf, Grinch
// Objects: Elf, Grinch
// Functions: runUp, runDown, runRight, runLeft

// Pseudocode
// Create object "elf" to establish position
// Establish methods for movement ("run")
// Create object "grinch" and assing position on board
// Create IF statement to determine success or failure
//

// Initial Code

var elf = {
pX: 0,
pY: 0,
winner: false;

run: function(direction) {
  if (direction === "up")
    this.pY += 20;
  else if (direction === "down")
    this.pY -= 20;
  else if (direction === "right")
    this.pX += 20;
  else if (direction === "left")
    this.pX -= 20;

grinch.pX = Math.floor((Math.random()*50) +1)
grinch.pY = Math.floor((Math.random()*50) +1)
present.pX = Math.floor((Math.random()*50) +1)
present.pY = Math.floor((Math.random()*50) +1)

console.log("The elf is at (" + elf.pX + "," + elf.pY + ")")
console.log("The present is at (" + present.pX + "," + present.pY + ")")
console.log("Oh no! The grinch is at (" + grinch.pX + "," + grinch.pY + ")")

if(elf.pX === grinch.pX && elf.pY === grinch.pY)
  console.log("Yikes! The grinch has stopped you from getting Santa's presents!");

else if (elf.pX === present.pX && elf.pY === present.pY))
  return elf.winner = true;
  console.log("Congrats! You retrieved Santa's present for the sleigh!");
}

};

var grinch = {
pX: Math.floor((Math.random()*50)+1),
pY: Math.floor((Math.random()*50)+1)
}

var present = {
pX: Math.floor((Math.random()*50)+1),
pY: Math.floor((Math.random()*50)+1)
}

elf.run("right");
elf.run("down");
elf.run("left");
elf.run("up");


// Refactored Code

// Establish elf object, including initial position and winner status as false (not declared winner unless IF statement is true later on). Changed property names for clarity.
var elf = {
horizontal: 0,
vertical: 0,
winner: false;

// This is the movement function, adding value to each of the pX and pY coordinate values
run: function(direction) {
  if (direction === "up")
    this.vertical += 20;
  else if (direction === "down")
    this.vertical -= 20;
  else if (direction === "right")
    this.horizontal += 20;
  else if (direction === "left")
    this.horizontal -= 20;

// Took out pieces about present position, was causing present to move
grinch.horizontal = Math.floor((Math.random()*50) +1)
grinch.vertical = Math.floor((Math.random()*50) +1)

console.log("The elf is at (" + elf.horizontal + "," + elf.vertical + ")")
console.log("The present is at (" + present.horizontal + "," + present.vertical + ")")
console.log("Oh no! The grinch is at (" + grinch.horizontal + "," + grinch.vertical + ")")

if(elf.horizontal === grinch.horizontal && elf.vertical === grinch.vertical)
  console.log("Yikes! The grinch has stopped you from getting Santa's presents!");

else if (elf.horizontal === present.horizontal && elf.vertical === present.vertical))
  return elf.winner = true;
  console.log("Congrats! You retrieved Santa's present for the sleigh!");
}

};

var grinch = {
horizontal: Math.floor((Math.random()*50)+1),
vertical: Math.floor((Math.random()*50)+1)
}

var present = {
horizontal: Math.floor((Math.random()*50)+1),
vertical: Math.floor((Math.random()*50)+1)
}

elf.run("right");
elf.run("down");
elf.run("left");
elf.run("up");

// Reflection
/*
What was the most difficult part of this challenge?

To be honest, I struggled a lot with this challenge. I found it difficult to think through the logic of a game, then translate the plan and pseudocode into JavaScript. I tried several different game ideas, but ended up doing something very similar to the example provided in the challenge. The logic of movement and random positioning seems pretty clear, but when I tried to build or create objects with my other game ideas I was quite unsuccessful. I'm kind of disappointed with my lack of creativity on this one :/.

What did you learn about creating objects and functions that interact with one another?

It's quite difficult! Similarly to classes and methods in Ruby, I found it helpful to break up the problem into several sections, establishing objects through variable declaration, printing the location of the objects, determining the location of the objects, etc. I've realized the importance of understanding the connections between the various objects and functions before writing the code. For example, when I went straight to code logic, I found it difficult to understand how to make the elf "run" in different directions, in relation to his current position.I was thankful for the examples provided in the challenge, they gave really helpful guidance in this area.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I used the random and Math.floor methods to determine the position of each of the objects. Random will randomly select a value, and Math.floor eliminates and decimal places in the value. This helped to create the random number position for "horizontal" and "vertical" of the grinch and the present.

How can you access and manipulate properties of objects?

By using dot notation, you can change the meaning of properties throughout the code. For example, using the IF statement for evaluating "winner" status, I was able to change winner: false; to winner: true; based on conditional values.

*/