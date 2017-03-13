// Write function that takes an array of words or phrases and returns the longest

function findLongest(array) {
 var sorted = array.sort(function (a, b) {
    return a.length < b.length;
 });
 return sorted[0];
};

// Function that takes two objects and checks to see if the objects share at least
// one key-value pair, returning true if >1 match is found and false if no matches found

function findMatch(object1, object2) {
  return Object.keys(object1).reduce(function(a, b) {
    if (object1[b] == object2[b]) a[b] = object2[b];
    return a;

  }, {});
}

// Function that takes integer for length, returns array of random strings of given length

function randomStrings(x) {
    var string = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    var randArray = []
    for (i = 0; i < x; i++) {
          string += possible.charAt(Math.floor(Math.random() * possible.length));
          randArray.push(string);
    }
    return randArray;
}

// DRIVER CODE
var words = ["long", "longer", "longest", "longest and then some"];
console.log(findLongest(words));

var colors = ['red', 'blue', 'green', 'iridescent aqua'];
console.log(findLongest(colors));

var me = {name:"Joe", age:25, residence:"Chicago"};
var futureMe = {name:"Joe", age:26, residence:"Unknown"};
console.log(findMatch(me, futureMe));

array = randomStrings(10);
console.log(array);
console.log(findLongest(array));

