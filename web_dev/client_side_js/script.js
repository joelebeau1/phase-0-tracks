var first_line = document.getElementById("first-line");
// Changing an element's border using JS
first_line.style.border = "3px solid black";

var barcelona = document.getElementById("barcelona");

var header = document.getElementById("header");

var mountain_bike = document.getElementById("mountain-bike");

function addRedBorder(event) {
    console.log("we're adding a red border");
    event.target.style.border = "5px solid red";
};

function addYellowBorder(event) {
    console.log("we're adding a yellow border");
    event.target.style.border = "5px solid yellow";
};

// Add event listeners to change elements style conditionally if they are moused over or clicked
header.addEventListener("mouseover", addRedBorder);

barcelona.addEventListener("click", addYellowBorder);

// Using JS DOM to add HTML elements through the JS script
var para = document.createElement("p"); 

var node = document.createTextNode("This is new.");

para.appendChild(node);

var element = document.getElementById("div1");
element.appendChild(para);