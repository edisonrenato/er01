var x = 1;
// var mod3 = true
// var mod5 = false

while (x<21) {
  mod3 = (x%3 === 0) ?  true: false;
  mod5 = (x%5 === 0) ?  true: false;
//var str = mod3 ? (mod5 ? "JuliaJames":"Julia") : (mod5 ? "James" :x);
var str = (mod3 && mod5) ? "JuliaJames" : mod3 ? : "Julia" : mod5 ? "James" : x;
console.log(str);
x = x+1;
}


var category = (eatsPlants && eatsAnimals) ? "omnivore" : eatsPlants ? "herbivore" : eatsAnimals ? "carnivore" : "undefined";

console.log(category);
