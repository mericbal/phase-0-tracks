// In this function , we will take a string as a parameter and we will loop through its letters and we will store these letter in a new variable ..

// Our pseudocode will start counting from string.lenght - 1 because hello is 5 letters and 5th is null so we have to subtract 1 so we can get 4 which is the last number of our string ..



function reverse(string) {
    var new_string = ''
    for (var i = string.length-1; i >= 0; i--){
        new_string += string[i]
    }
    console.log(new_string)
}

var string = 'Hello'

if (string.length <= 4) {
    console.log('This string is too short !')
} else if (string.length >= 12) {
    console.log('This string is too long !')
} else {
    console.log(reverse(string))
}
