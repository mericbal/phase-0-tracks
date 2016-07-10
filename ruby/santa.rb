
class Santa
    attr_reader :ethnicity, :age
    attr_accessor :gender

    def speak
        p 'Ho ho ho ! Happppyyy Hoolliidaysss !'
    end

    def eat_milk_and_cookies(cookie)
        p 'That was a good ' + cookie.to_s + ' cookie !'
    end

    def initialize
        genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
        ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

        p 'Initializing Santa instance ..'
        @gender = genders[rand(0..genders.length)]
        @ethnicity = ethnicities[rand(0..ethnicities.length)]
        @ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = rand(0..140)
        puts 'Gender of Santa is = ' + @gender.to_s
        puts 'Ethnicity of Santa is = ' + @ethnicity.to_s
        puts 'Santas age = ' + @age.to_s

    end


    def birthday
        @age = @age + 1
    end

    def get_mad(input)
        @ranking.delete(input)
        @ranking.push(input)
        @ranking
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

santa1 = Santa.new()



#
# santa1 = Santa.new('Male', 'Hispanic')
# santa1.speak
# santa1.eat_milk_and_cookies('chocolate')
#
# p santa1.gender
# santa1.gender=('Female')
# p santa1.gender
#
#
# santa1.get_mad('Comet')
# p santa1.age
# santa1.birthday
# p santa1.age
#
# p santa1.ethnicity
