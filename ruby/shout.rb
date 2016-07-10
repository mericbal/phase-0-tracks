module Shout

    def self.yell_angrily(words)
        words + ' !!!' + ' :('
    end

    def self.yell_happily(words)
        words + ' ! Hahahah '
    end
end


happy = Shout.yell_happily('I kissed a girl')
p happy

angry = Shout.yell_angrily('F*ck !!!')
p angry
