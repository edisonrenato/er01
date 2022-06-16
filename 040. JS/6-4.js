var rainbow = ["Red", "Orange", "Blackberry", "Blue"];


rainbow.splice(2, 1); //outcome: ["Red", "Orange", "Blue"];
rainbow.splice(2, 0, "Yellow", "Green"); //outcome: ["Red", "Orange", "Yellow", "Green", "Blue"];
rainbow.splice(-0,0, "Purple");
console.log(rainbow);
