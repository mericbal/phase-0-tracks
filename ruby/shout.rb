# module Shout
#
#     def self.yell_angrily(words)
#         words + ' !!!' + ' :('
#     end
#
#     def self.yell_happily(words)
#         words + ' ! Hahahah '
#     end
# end
#
#
# happy = Shout.yell_happily('I kissed a girl')
# p happy
#
# angry = Shout.yell_angrily('F*ck !!!')
# p angry

module Shout
    def shout(words)
        puts '!!! ' + words.to_s.upcase + ' !!!'
    end
end


class Happy
    include Shout
end

class Angry
    include Shout
end


happy = Happy.new
happy.shout('I won the lottery')

angry = Angry.new
angry.shout('!! Whatta F.ck !!')
