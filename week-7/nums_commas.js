// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Will Granger.

// Pseudocode

//INPUT: Integer
//OUTPUT: Integer as a comma-separated String
/*
STEPS TO SOLVE:
- Create a function called separateComma, which takes an Integer as an argument
- Convert Integer into String
- Place String into collection data structure as individual characters
- Reverse array
- Set a counter, WHILE counter is less than the length of the data structure, place commas between every three characters

*/

// Initial Solution

// function separateComma(number) {
//   var string = number.toString();
//   var array = string.split("").reverse();
//   for(var index = 3; index<array.length; index += 4 )
//     array.splice(index, 0, ",");
//   var final = array.reverse().join('');
//   console.log(final);
// };

// separateComma(2345)

// Refactored Solution

function separateComma(number) {
  var array = number.toString().split("").reverse();
  for(var index = 3; index<array.length; index += 4 )
    array.splice(index, 0, ",");
  console.log(array = array.reverse().join(''));
};

separateComma(23452462344)

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

I thought it was helpful to start off the challenge with pseudocode. While I used slightly different logic from the Ruby solo challenge, many pieces were similar. The "agnostic" quality of pseudocode makes problem-solving more universally understandable. As a result of the pseudocode, I found the code-writing to be slightly easier than I had expected. My partner and I were able to break up the problem into components, then handled the disparities in syntax/structure (from Ruby) one section at a time.

What did you learn about iterating over arrays in JavaScript?

In many ways, iterating over arrays in JavaScript is similar to the same process in Ruby. I found the "for" loop to be especially helpful and concise. By establishing a counter for the index and incrementing by four, my partner and I were able to insert commas in the appropriate within the array.

What was different about solving this problem in JavaScript?

The main differences were in syntax and structure. Declaring variables, structuring blocks and loops, and using methods is different from Ruby. I also enjoyed revisiting the problem a couple weeks later. Since I am less familiar with JavaScript, I was less tempted to jump straight to the code and was able to focus first on the logic.

What built-in methods did you find to incorporate in your refactored solution?

We used the following methods in the refactored solution (and in many cases, the initial solution as well):

- toString : to convert the Integer into a String
- split : to break up the String into individual characters, then place in an array
- reverse: to reverse the array
- length: to break the loop after the duration of the array
- splice: to insert a comma at certain index intervals
- join: to join the String characters into one String
*/