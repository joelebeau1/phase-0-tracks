# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
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

# write a /contact route that displays an address
get '/contact' do
    address = '100 W. Madison, Chicago, IL'
    "Contact Information: #{address}"
end 

# write a /great_job route that takes a person's name as a query parameter,
# and tells them 'good job' using their name, or just says 'good job' is query parameter
# is not present
get '/great_job' do
   name = params[:name]
   if name
      "Great job #{name}!"
    else 
        "Great job!"
    end
end

# write a route that uses route parameters to add two numbers and respond with result
get "/:x/plus/:y" do
    # Initial route parameters are strings, need to be converted to integers
    x = params[:x].to_i
    y = params[:y].to_i
    result = x + y
    "#{x} + #{y} = #{result}"
end 

# BONUS: write a route that allows the user to search the database in some way
# Search by campus (CHI, NYC, SF etc.)
get "/search/:campus" do
    # Store all table data where campus matches the route parameter in a variable
    # Variable will be an array of hashes, with each student's data in their own hash
    campus_list = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
    response = ""
    campus_list.each do |student|
        # Iterate through array of students, adding each students name to response string
        response << "#{student['name']}<br>"
    end
    # Return readable results
    "The following students are attending the #{params[:campus]} campus: <br> #{response}"
end 


