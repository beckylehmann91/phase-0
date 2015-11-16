// Person 3 - Becky Lehmann
// Pseudocode to Code

function sum(array) {
  var sum = 0;
  for(var index = 0; index < array.length; index ++ )
    sum += array[index];
  console.log(sum);
}

sum([0, 1, 2, 3]);

function mean(array) {
  var sum = 0
  for(var index = 0; index < array.length; index ++ )
    sum += array[index];
  var average = sum/array.length;
  console.log(average);
}

mean([0, 1, 2, 3]);

function median(array) {
  array = array.sort();
  var half = Math.floor(array.length / 2);
  if (array.length % 2 == 0)
    var median = (array[half] + array[half - 1])/2;
  else if (array.length % 2 != 0)
    var median = array[half];
  console.log(median);
}

median([0, 1, 2, 3]);