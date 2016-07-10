

class Santa
    attr_reader :ethnicity, :age
    attr_accessor :gender

    def speak
        p 'Ho ho ho ! Happppyyy Hoolliidaysss !'
    end

    def eat_milk_and_cookies(cookie)
        p 'That was a good ' + cookie.to_s + ' cookie !'
    end

    def initialize(gender, ethnicity)
        p 'Initializing Santa instance ..'
        @gender = gender
        @ethnicity = ethnicity
        @age = 0
    end


    def birthday
        @age = @age + 1
    end

    def get_mad(input)
        ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        ranking.delete(input)
        ranking.push(input)
        ranking
    end

    # def gender=(new_gender)
    #     @gender = new_gender
    # end
    #
    # def gender
    #     @gender
    # end
    #
    # def age
    #     @age
    # end
    #
    # def ethnicity
    #     @ethnicity
    # end
end

santa1 = Santa.new('Male', 'Hispanic')
santa1.speak
santa1.eat_milk_and_cookies('chocolate')

p santa1.gender
santa1.gender=('Female')
p santa1.gender


santa1.get_mad('Comet')
p santa1.age
santa1.birthday
p santa1.age

p santa1.ethnicity
