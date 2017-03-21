var first_line = document.getElementById("first-line");
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

header.addEventListener("mouseover", addRedBorder);

barcelona.addEventListener("click", addYellowBorder);