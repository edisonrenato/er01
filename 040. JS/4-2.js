var x = 99;
var word1 = "bottles";
var word2 = "bottles";
while (x > 0) {
  switch(x) {
    case x === 1:
      word1 = "bottle";
    case x === 2:
      word2 = "bottle";
    default:
      message = x + " " +word1+ " of juice on the wall! " +
      x + " "+ word1 + " of juice! Take one down, pass it around... " +
      (x-1) + " " + word2 +" of juice on the wall!";
      console.log(message);
  }
  x = x - 1;
}


/* The most concise version: */
var num = 99;
while (num > 0) {
  var word1 = (num === 1) ? "bottle" : "bottles";
  var word2 = (num === 2) ? "bottle": "bottles";
  message = num + " " +word1+ " of juice on the wall! " +
  num + " "+word1+ " of juice! Take one down, pass it around... " +
  (num-1) + " " + word2 +" of juice on the wall!";
  console.log(message);
  num = num - 1;
}
