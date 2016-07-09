class Puppy

    def fetch(toy)
        puts "I brought back the #{toy} !"
        toy
    end

    def speak(x)
        x.times { p 'Woof !'}
    end


end

kuti = Puppy.new
kuti.fetch('ball')
