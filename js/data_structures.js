var colors = ['blue', 'gray', 'black', 'brown']
var names = ['Ed', 'Ted', 'Zed', 'Chad']


function add_name(name) {
    names.push(name)
    names
}

function add_color(color) {
    colors.push(color)
    colors
}

console.log(names)
add_name('Med')
console.log(names)


console.log(colors)
add_color('zebra')
console.log(colors)


var random_name = names[Math.floor((Math.random() * names.length))]
var random_color = colors[Math.floor((Math.random() * colors.length))]

var horse1 = {}
horse1[random_name] = random_color

console.log(horse1)
