// Write function that takes an array of words or phrases and returns the longest

function findLongest(array) {
 var sorted = array.sort(function (a, b) {
    return a.length < b.length;
 });
 return sorted[0];
};

// Function that takes two objects (hashes) and checks to see if the objects share at least
// one key-value pair, returning true if >1 match is found and false if no matches found

function findMatch(hash1, hash2) {

    
}


// DRIVER CODE
var words = ["long", "longer", "longest", "longest and then some"];
console.log(findLongest(words));

var colors = ['red', 'blue', 'green', 'iridescent aqua'];
console.log(findLongest(colors));
