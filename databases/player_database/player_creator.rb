require 'sqlite3'

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
