/*
 * Programming Quiz: What do I Wear? (3-7)
 *
 * Using if/else statements, create a series of logical expressions that logs the size of a t-shirt based on the measurements of:
 *   - shirtWidth
 *   - shirtLength
 *   - shirtSleeve
 *
 * Use the chart above to print out one of the following correct values:
 *   - S, M, L, XL, 2XL, or 3XL
 */

/*
 * QUIZ REQUIREMENTS
 * 1. Your code should have the variables `shirtWidth`, `shirtLength`, and `shirtSleeve`
 * 2. Your code should include an `if...else` conditional statement
 * 3. Your code should use logical expressions
 * 4. Your code should produce the expected output
 * 6. Your code should not be empty
 * 7. BE CAREFUL ABOUT THE EXACT CHARACTERS TO BE PRINTED.
 */



// change the values of `shirtWidth`, `shirtLength`, and `shirtSleeve` to test your code
var shirtWidth = 23;
var shirtLength = 30;
var shirtSleeve = 8.71;
var wdt = "";
var lgt = "";
var slv = "";
var message = "";

/*
 * To gain confidence, check your code for the following combination of [shirtWidth, shirtLength, shirtSleeve, expectedSize]:
 * [18, 28, 8.13, 'S']
 * [19.99, 28.99, 8.379, 'S']
 * [20, 29, 8.38, 'M']
 * [22, 30, 8.63, 'L']
 * [24, 31, 8.88, 'XL']
 * [26, 33, 9.63, '2XL']
 * [27.99, 33.99, 10.129, '2XL']
 * [28, 34, 10.13, '3XL']
 * [18, 29, 8.47, 'NA']
*/

// WRITE YOUR CODE HERE

// Evaluating Width
if (shirtWidth <= 18) {
  wdt = "S";
} else if (shirtWidth <= 20) {
  wdt = "M";
} else if (shirtWidth <= 22) {
  wdt = "L";
} else if (shirtWidth <= 24) {
  wdt = "XL";
} else if (shirtWidth <= 26) {
  wdt = "2XL";
} else if (shirtWidth <= 28) {
  wdt = "3XL";
} else {
  message = "NA";
}
// Evaluating Length
if (shirtLength <= 28) {
  lgt = "S";
} else if (shirtLength <= 29) {
  lgt = "M";
} else if (shirtLength <= 30) {
  lgt = "L";
} else if (shirtLength <= 31) {
  lgt = "XL";
} else if (shirtLength <= 33) {
  lgt = "2XL";
} else if (shirtLength <= 34) {
  lgt = "3XL";
} else {
  message = "NA";
}

// if wdt and lgt are different, skip sleeve evaluation
if (lgt === wdt) {
  // Evaluating Sleeve
  if (shirtSleeve <= 8.13) {
    slv = "S";
  } else if (shirtSleeve <= 8.38) {
    slv = "M";
  } else if (shirtSleeve <= 8.63) {
    slv = "L";
  } else if (shirtSleeve <= 8.88) {
    slv = "XL";
  } else if (shirtSleeve <= 9.63) {
    slv = "2XL";
  } else if (shirtSleeve <= 10.13) {
    slv = "3XL";
  } else {
    message = "NA";
  }
} else message = "NA";

if (lgt === slv) {
  message = lgt;
}
console.log(message);
