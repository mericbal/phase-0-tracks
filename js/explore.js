function reverse(string) {
    var new_string = ''
    for (var i = string.length-1; i > -1; i--){
        // console.log(string[i])
        new_string += string[i]
    }
    console.log(new_string)
}

reverse('hello')
// console.log(new_string)
