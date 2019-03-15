// CALCULATOR
var tryagain = true;
while (tryagain) {
  var result = null;
  // User Input
  var option = prompt
  ("1) Basic Functions. 2) Advanced Functions.");

  while (option != 1 && option != 2) {
    var option = prompt
    ("1) Basic Functions. 2) Advanced Functions.");
  }

  // --Basic Operations:--
  if (option == 1) {
    var operation = prompt
    ("(a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?") || "a";
    var num1 = parseInt(prompt
      ("What is your 1st number?"));
    var num2 = parseInt(prompt
      ("What is your 2nd number?"));
    switch (operation) {
      // Addition
      case "a":
      result = num1 + num2;
      break;
      // Subtraction
      case "s":
      result = num1 - num2;
      break;
      // Multiplication
      case "m":
      result = num1 * num2;
      break;
      // Division
      case "d":
      result = num1 / num2;
      break;
      default:
    }

        // --Advanced Operations:--
  } else if (option == 2) {
    var operation = prompt
    ("(p)ower or (s)quare root?") || "p";
        switch (operation) {
        // Power
        case "p":
        var num1 = parseInt(prompt("What is your number?"));
        var num2 = parseInt(prompt("What power would you like?"));
        result = Math.pow(num1, num2);
        break;
        // Square Root
        case "s":
        var num1 = parseInt(prompt("What number do you want the square root of?"));
        result = Math.sqrt(num1);
        break;
        default:
      }
    }

    // Display Output
    if (result !== null) {
      alert("Your result is: " + result);
    }
  tryagain = !prompt("Press enter to continue or (q) to quit.")
}























// my name jeff
