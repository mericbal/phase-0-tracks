all_players = []
class Player
    attr_reader :name, :nationality
    attr_accessor :position, :age, :pace, :stamina

    def initialize(name, age, nationality, position)
        p 'Player creation started .. '
        @name = name
        @age = age
        @nationality = nationality
        @position = position
        @pace = rand(74..81)
        @stamina = rand(61..74)
        p 'Player has been created !'
    end

    def pace_training()
        @pace = @pace + 1
    end

    def stamina_training()
        @stamina = @stamina + 1
    end

end

p ' Welcome to creator .. Press enter to create your first player ..'
gets
loop do

    puts 'PLayer name ?'
    name = gets.chomp.to_s.capitalize
    puts 'players age ?'
    age = gets.chomp.to_i
    puts 'Where is the player from ?'
    nationality = gets.chomp.to_s.capitalize
    puts 'Player position ? Left - Winger ? Rigth back ? etc .. '
    position = gets.chomp.to_s.upcase
    puts 'We will create a random pace and stamina for your player. we will let you know about the attributes .. '


    player = Player.new(name, age, nationality, position)
    all_players << player

    puts 'Would you like to create another player ?'
    a = gets.chomp.to_s.downcase
    break if a == 'no'

end
p ' Here is a list of players you have created .. '

all_players.length.times do |i|
    p 'Name = ' + all_players[i].name + ' Age = ' +  all_players[i].age.to_s + ' Nationality = ' + all_players[i].nationality.to_s + ' Position = ' + all_players[i].position.to_s + ' Pace = ' + all_players[i].pace.to_s + ' Stamina = ' + all_players[i].stamina.to_s
end


# p all_players[0].name

#
# p player.name
# p player.age
# p player.nationality
# p player.position
# p 'first pace = ' + player.pace.to_s
# p player.stamina
# player.pace_training
# p 'after pace trainig = ' + player.pace.to_s

# p 'all players = '
# p all_players
