// var words = ["long phrase","longest phrase","longer phrase",'llloooooooooooooooooooooonnnnggg!!!', 'nooottt veery long']
//
// function longest(array) {
//     longest = ''
//     for (var i = 0; i < array.length; i++ ) {
//         if (array[i].length > longest.length) {
//             longest = array[i]
//         }
//     } console.log(longest)
// }
//
// longest(words)


//
//
// var guy1 = {name: 'Steven', age:54}
// var guy2 = {name: 'Tamir', age:54}
//
// console.log(guy1.age)
//
// function compare(obj1,obj2) {
//     if (obj1.age == obj2.age) {
//         console.log('true')
//     } else if (obj1.name == obj2.name) {
//         console.log('true')
//     } else {
//         console.log('false')
//     }
// }
//
// (compare(guy1,guy2))


function random(x) {
    var string = ''
    for (var i = 0; i < x; i++ ) {
    var letter = alp[Math.floor((Math.random() * alp.length))]
    string += letter
    }
    console.log(string)
}

// console.log(string);

var alp = 'abcdefghijklmnoprstquvwyxz'
//
random()
//
// function length()
//

// var random = alp[Math.floor((Math.random() * alp.length))]
//
//
//
// console.log(random)

// var meric = '77' + random + random +random
// console.log(meric + random);
