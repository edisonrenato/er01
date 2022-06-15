var x = 9;
while (x >= 1) {
  console.log("hello " + x);
  x = x - 1;
}


for (var x = 9; x >= 1; x--) {
  console.log("hello " + x);
}


// 4-6
for (var x = 5; x < 10; x++) {
  console.log(x);
}


// 4-7

for (var k = 0; k < 200; k++) {
  console.log(k);
}


//4-8
var solution = 1;
for (var n = 12; n >= 1; n--) {
  solution *=n;
}
console.log(solution);
