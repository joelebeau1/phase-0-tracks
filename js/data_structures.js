var colors = ['blue', 'red', 'green', 'yellow'];
var names = ['Ed', 'Eddie', 'Mr. Ed', 'Edd'];

colors.push('purple');
names.push('Ted');

console.log(colors);
console.log(names);

var horses = {};

for(i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
};

console.log(horses);
