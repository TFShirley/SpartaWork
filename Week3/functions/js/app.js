// Camel    thisIsCamelCase
// Capital  ThisIsCapitalCase
// Snake    this_is_snake_case
// Kebab    this-is-kebab-case

console.log("page loadeded");
var a = 5, b = 10, c = 2, d = 7;

multiplyTwoNums(a, b);
multiplyTwoNums(c, d);

function multiplyTwoNums(a, b) {
  var result = a * b;
  console.log(result);
}

var additionresult = function() {
  num1 = prompt("give me the 1st number")
  num2 = prompt("give me the 2nd number")
  return num1 + num2;
}

// prompts always return strings

console.log(additionresult());
