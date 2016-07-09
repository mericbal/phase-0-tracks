class Santa

    def speak
        p 'Ho ho ho ! Happppyyy Hoolliidaysss !'
    end

    def eat_milk_and_cookies(cookie)
        p 'That was a good ' + cookie.to_s + ' cookie !'
    end

    def initialize
        p 'Initializing Santa instance ..'
    end


end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies('chocolate')
