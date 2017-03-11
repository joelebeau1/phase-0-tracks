// Write function that takes an array of words or phrases and returns the longest


function findLongest(array) {
 var sorted = array.sort(function (a, b) {
    return a.length < b.length;
 });
 return sorted[0];
};


var words = ["long", "longer", "longest", "longest and then some"];

console.log(findLongest(words));
