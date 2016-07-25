require 'sqlite3'
require 'faker'

database = SQLite3::Database.new('players.db')
database.results_as_hash = true

create_player = <<-SQL
    create table if not exists players(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    position VARCHAR(255),
    nationality VARCHAR(255)
  )
SQL

database.execute(create_player)


def create_player(database, first_name, last_name, age, position, nationality)
    database.execute('insert into players (first_name, last_name, age, position, nationality) values (?,?,?,?,?)', [first_name,last_name,age,position,nationality])
end

create_player(database, 'Alex', 'Hunter', 18,'Left-Winger', 'England')



puts 'Welcome to the Soccer Player Creator , V.1.0 '
puts 'We have already created a player for you as an example ..'

loop do
    puts 'Press enter to continue ..'
    input = gets
    puts 'What should be the FIRST name of your player ?'
    first_name = gets.chomp.to_s
    puts 'What should be the LAST name of your player ?'
    last_name = gets.chomp.to_s
    puts 'Your player has to be 17 to play in professional leagues so we will set a default age of 17 for your player ..'
    puts 'Which position you want your player to play ?'
    position = gets.chomp.to_s

    create_player(database, first_name, last_name, 17, position, Faker::Address.country)

    puts 'Your player has been created and stored in the database.'
    puts 'Would you like to create another one ? If not , say "quit" to display your players list .. '
    input = gets.chomp.to_s.downcase
    break if input == 'quit'

end

puts 'Here is the list of your players stored in the database !'
players = database.execute('select * from players')
players.each do |player|
    puts player['id'].to_s + ' = ' + player['first_name'].to_s + ' ' + player['last_name'].to_s + ' is ' + player['age'].to_s + ' years old and is from ' + player['nationality'].to_s + ' ..'
end
