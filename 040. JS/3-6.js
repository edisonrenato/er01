// change the values of `flavor`, `vessel`, and `toppings` to test your code
var flavor = "strawberry";
var vessel = "cone";
var toppings = "cookies";
var message = "I'd like two scoops of "+flavor+" ice cream in a "+vessel+" with "+toppings+".";

// Add your code here

if ((flavor==="vanilla" || flavor==="chocolate") && (vessel==="cone" || vessel==="bowl") && (toppings==="sprinkles"||toppings==="peanuts")) {
  console.log(message);
}
