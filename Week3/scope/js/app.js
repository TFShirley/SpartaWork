console.log("loaded B)");

var outsideVariable = 5;

function printwords() {
  console.log(outsideVariable);
}
function doSomething() {
  var insideVariable = "Can't catch meee";
}
function doSomethingElse() {
  console.log(insideVariable);
}

printwords();
// doSomethingElse();
// console.log(insideVariable);

// ----------------------------------

function first(){
  console.log("I'm first!");
}

function second() {
  first();
  console.log("I'm second!");
}

second();

// Nesting --------------------------

var word1 = "butter";
var word2 = "yellow";

function joinWordsandPrint (string1, string2) {
  var combinedString = string1 + string2;

  function printString(string) {
    console.log(string);
  }
  printString(combinedString);
}

joinWordsandPrint(word2, word1);

// // this function can't find the printString function
// // as it's nested inside joinWordsandPrint.
// printString(word2);
