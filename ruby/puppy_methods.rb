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






game = []

class Euro2016

    def initialize
        p 'Game started ! '
    end

    def france(player, min)
        p 'Goaall ! France scored ! ' + player.to_s.capitalize + ' in ' + min.to_s + 'th minutes . '
    end

    def germany(player, min)
        p 'Goaall ! Germany scored ! ' + player.to_s.capitalize + ' in ' + min.to_s + 'th minutes . '
    end


end


50.times do
    match = Euro2016.new
    game.push(match.france('payet',21))
    game.push(match.germany('muller',32))
end

p game
