console.log("loaded");

// Take range of values;
// for each value
// return Fizz if it's a multiple of 3,
// return Buzz if it's a multiple of 5
// and return FizzBuzz if it's a multiple of both.
// (if neither, just return the value)

// Ask for range of values
var num1 = parseInt
(prompt("What's the start of your range?"));
var num2 = parseInt
(prompt("What's the end of your range?"));

rangeLoop(num1, num2);

// function to loop through said values
function rangeLoop(num1, num2) {
  for (num1; num1 <= num2; num1++) {
    console.log(fizzBuzz(num1));
  }
}
// function to evaluate fizzbuzz
function fizzBuzz(i) {
  if (i % 3 == 0 && i % 5 == 0) {
    return "FizzBuzz";
  } else if (i % 3 == 0) {
    return "Fizz";
  } else if (i % 5 == 0) {
    return "Buzz";
  } else {
    return i;
  }
}
