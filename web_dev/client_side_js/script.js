console.log('My page script !');


function add_border(event) {
    console.log('clicked');
    console.log(event);
    // var hobbies = document.getElementById('hobbies')
    event.target.style.border = '3px solid red'
}

function back_color(event) {
    console.log('clicked');
    console.log(event);
    event.target.style.fontFamily = 'Comic Sans Ms'
    // event.target.style.background = 'red'
}

function clicked(event) {
    event.target.style.color = 'red'
}
// add_border

var hobbies = document.getElementById('hobbies')
hobbies.addEventListener('click', add_border)


var foods = document.getElementById('foods')
foods.addEventListener('click', back_color)

var buttons = document.getElementById('button')
buttons.addEventListener('click', clicked)
