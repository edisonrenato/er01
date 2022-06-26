function higherOrderFunction () {
  return function () {
    return(8);
  };
}

higherOrderFunction()();




function alertThenReturn() {
  alert('Message 1!');

  return function () {
    alert('Message 2!');
  };
}



[1, 2, 3, 4].forEach(function(num) { console.log(num); });


[1, 2, 3, 4].forEach(function() { console.log(num); });


function logNum (num) { console.log(num); } [1, 2, 3, 4].forEach(logNum);

[1, 2, 3, 4].forEach(console.log);
