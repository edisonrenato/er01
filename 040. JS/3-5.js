/*
 * Programming Quiz - Checking Your Balance (3-5)
 */

/*
 * QUIZ REQUIREMENTS
 * 1. Your code should have the variables `balance`, `checkBalance`, `isActive`
 * 2. Your code should include an `if...else` conditional statement
 * 3. Your code should produce the expected output
 * 4. Your code should not be empty
 * 5. BE CAREFUL ABOUT THE PUNCTUATION AND THE EXACT WORDS TO BE PRINTED.
 */

// change the values of `balance`, `checkBalance`, and `isActive` to test your code
var balance = -325.00;
var checkBalance = true;
var isActive = false;
var message = "";
// your code goes here

if (checkBalance ===false) {
  message = "Thank you. Have a nice day!";
} else if (isActive === true && balance > 0) {
  message = "Your balance is $"+balance.toFixed(2)+".";
} else if (isActive === false) {
  message = "Your account is no longer active.";
} else if (balance === 0) {
  message = "Your account is empty.";
} else if (balance < 0) {
  message = "Your balance is negative. Please contact bank."
} else {
    message = "error";
}
console.log(message)
