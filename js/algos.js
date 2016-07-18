var words = ["long phrase","longest phrase","longer phrase",'llloooooooooooooooooooooonnnnggg!!!', 'nooottt veery long']

function longest(array) {
    longest = ''
    for (var i = 0; i < array.length; i++ ) {
        if (array[i].length > longest.length) {
            longest = array[i]
        }
    } console.log(longest)
}

longest(words)
