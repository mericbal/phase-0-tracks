# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campuses' do
    erb :campuses
end

get '/campus/form' do
    erb :campus_form
end

get '/submitted' do
    erb :submitted
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end
# #
post '/campus' do
    db.execute("INSERT INTO campus (name, email, campus) VALUES (?,?,?)", [params['name'], params['email'], params['campus']])
    redirect '/submitted'
end

# add static resources
