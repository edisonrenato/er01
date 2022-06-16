/*
 * Programming Quiz: Donuts Revisited (7-6)
 */

/*
 * QUIZ REQUIREMENTS
 * - Your code sshould have an array named `donuts`
 * - Your `donuts` array should call the `forEach()` method
 * - Your `forEach()` loop should output the donut summaries
 * - BE CAREFUL ABOUT THE PUNCTUATION, SPACES, AND EXACT WORDS TO BE PRINTED.
 */

// This is an array of objects.

var donuts = [
  { type: "Jelly", cost: 1.22 },
  { type: "Chocolate", cost: 2.45 },
  { type: "Cider", cost: 1.59 },
  { type: "Boston Cream", cost: 5.99 }
];

i=0;
donuts.forEach(function(){
  message = donuts[i].type+" donuts cost $"+donuts[i].cost+" each";
  console.log(message);
  i++;
});

//solução gabarito
donuts.forEach(function(donut){

    // donut represents a single element of donuts array
    // donut is an object, therefore you can access its properties using a dot notation
    console.log(donut.type+" donuts cost $"+donut.cost+" each");
});
