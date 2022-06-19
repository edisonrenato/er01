const tree = {
  type: 'redwood',
  leaves: 'green',
  height: 80,
  age: 15,
  growOneFoot: function () {
    this.height += 1;
  }
};



tree.growOneFoot();


// Ex. 2

/*

Create an object called `chameleon` with two properties:

1. `color`, whose value is initially set to 'green' or 'pink'
2. `changeColor`, a function which changes `chameleon`'s `color` to 'pink'
    if it is 'green', or to 'green' if it is 'pink'

*/

const chameleon = {
  color: "green",
  changeColor: function (){
    this.color === "green" ? "pink" : "green";
  }
}

chameleon.color;
chameleon.changeColor();
chameleon.color;

// sol. 2



let chameleon = {
  color: "green",
  changeColor: function (){
    if (this.color === "green") {
      this.color = "pink";
    } else {
      this.color = "green";
    }
  }
};

console.log(chameleon.color);
chameleon.changeColor();
console.log(chameleon.color);
