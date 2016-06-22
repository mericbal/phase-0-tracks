freeway = {
    car1: {
        make: 'BMW',
        year: 2016,
        passengers: 2,
        speed: {
            max_speed: 140,
            ave_speed: 70,
        },
        passenger_names: ['Meric', 'Nil'],
    },

    car2: {
        make: 'Lexus',
        year: 2014,
        passengers: 3,
        speed: {
            max_speed: 120,
            ave_speed: 80,
        },
        passenger_names: ['Kaan', 'Berker', 'Ugur'],
    },
}

p freeway[:car1]

p freeway[:car2]

p freeway[:car1][:speed][:max_speed]

p freeway[:car2][:passenger_names][0]

p freeway[:car1][:passengers]
