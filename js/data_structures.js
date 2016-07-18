var colors = ['blue', 'gray', 'black', 'brown']
var names = ['Ed', 'Ted', 'Zed', 'Chad']


function add_horse(name) {
    names.push(name)
    names
}

function add_color(color) {
    colors.push(color)
    colors
}

console.log(names)
add_horse('Med')
console.log(names)


console.log(colors)
add_color('zebra')
console.log(colors)
