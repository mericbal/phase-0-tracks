# require gems
require 'sinatra'
require 'sqlite3'
require 'faker'
#
db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

get '/great_job' do
    name = params[:name]
    if name
        'Good job , ' + name.to_s  + ' !'
    else
        'Good job! '
    end
end


# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/:num1/add/:num2' do
    result = 0
    result = params[:num1].to_i + params[:num2].to_i
    'The result is = ' + result.to_s + ' !'
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


get '/contact' do
    'Address = ' + Faker::Address.street_address.to_s + '<br>' + 'Zip Code = ' + Faker::Address.zip_code.to_s + '<br>' + 'City = ' + Faker::Address.city.to_s + '<br>' + 'Country = ' + Faker::Address.country.to_s + '<br>'
end



# It is almost same with the all student data so i copy and pasted and just made some changes on it ..

get '/age_filter' do
    students = db.execute('select * from students where age<30')
    response = ""
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
    response
end

get '/campus_filter' do
    students = db.execute('select * from students where campus="SF"')
    response = ""
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
    response
end
