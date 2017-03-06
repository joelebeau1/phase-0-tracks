// Function to take string as parameter and return reversed string


//  in new function to take in string as parameter and return reversed
// function takes in blank string

function reverseString(string) {
    reverseArray = []
    for (var i = (string.length - 1); i >= 0; i--) {
        reverseArray.push(string[i]);
    }
    console.log(reverseArray.join());
    return reverseArray.join();
}

var backwardString = (reverseString("Joe"));
console.log(backwardString);

var javaIsfun = true;
if (javaIsfun) {
    console.log(backwardString);
} else {
    null;
}