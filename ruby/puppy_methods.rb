class Puppy

    def fetch(toy)
        puts "I brought back the #{toy} !"
        toy
    end

    def speak(x)
        x.times { p 'Woof !'}
    end

    def roll_over
        puts ' * rolls over * !'
    end

    def dog_years(x)
        p (x / 7)
    end

    def treat(treat)
        puts 'Puppy loved ' + treat + ' !'
    end

    def initialize
        p 'Initializing ...'
    end

end

kuti = Puppy.new
kuti.fetch('ball')
kuti.speak(7)
kuti.roll_over
kuti.dog_years(49)
kuti.treat('steak')
