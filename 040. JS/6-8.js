/*
 * Programming Quiz: Another Type of Loop (6-8)
 * QUIZ REQUIREMENTS
 * Use the existing `test` variable and write a `forEach` loop
 * that adds 100 to each number that is divisible by 3.
 *
 * Things to note:
 *  - Inside the loop, you must use an `if` statement to verify code is divisible by 3
 *  - Inside the loop, you can updade an element ONLY by using the arrayName[index]
 *  - Outside the loop, you can use `console.log` to verify the `test` variable
 */

var test = [12, 929, 11, 3, 199, 1000, 7, 1, 24, 37, 4,
    19, 300, 3775, 299, 36, 209, 148, 169, 299,
    6, 109, 20, 58, 139, 59, 3, 1, 139
];

// Write your code here


function myFunction (item){
  if  (item % 3 === 0) {
    item +=100
  }
  return item;



  let result = (num % 3 === 0) ? num += 100 :;
  return num;
}

test.map(function myFunction (item){
  if  (item % 3 === 0) {
    item +=100
  }
  return item;

);



test.forEach(myFunction)




// Solution:



// You can test your code with a smaller array first
// var test = [12, 29, 11, 3];

// Write your code here
test.forEach(function(item, index){
    if(item%3===0){
        // The commented statements below would not be able to change the value of item
        // because the `item` is a COPY of actual element, while actual is test[index]
        // item = item + 100;
        // console.log("The updated element is "+item+" and actual is "+test[index]);
        test[index]=test[index]+100;
    }
    //else
    //    console.log("Element "+item+" is not divisible by 3");
});
console.log(test);


// using map

test = test.map(function (item){
      if  (item % 3 === 0) {
        item +=100;
      }
  return item;

}

);

console.log(test);

/*
 output:
[ 112, 929, 11, 103, 199, 1000, 7, 1, 124, 37, 4, 19, 400, 3775, 299, 136, 209, 148, 169, 299, 106, 109, 20, 58, 139, 59, 103, 1, 139 ]
[ 112, 929, 11, 103, 199, 1000, 7, 1, 124, 37, 4, 19, 400, 3775, 299, 136, 209, 148, 169, 299, 106, 109, 20, 58, 139, 59, 103, 1, 139 ]
[ 112, 929, 11, 103, 199, 1000, 7, 1, 124, 37, 4, 19, 400, 3775, 299, 136, 209, 148, 169, 299, 106, 109, 20, 58, 139, 59, 103, 1, 139 ]
*/
