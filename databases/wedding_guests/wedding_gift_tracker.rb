# Wedding gift & thank-you card tracker

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("guests.db")

# Stores wedding guest, gift, and whether or not a thank-you card has been sent
create_table_sql = <<-SQL
    CREATE TABLE IF NOT EXISTS guests(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gift VARCHAR(255),
    card_sent VARCHAR(5)
    )
    SQL

db.execute(create_table_sql)

def add_guest(db, name, gift, card_sent)
  db.execute('INSERT INTO guests (name, gift, card_sent) VALUES (?,?,?)', [name, gift, card_sent])
end 

# add_guest(db, 'Joe LeBeau', '$500 cash', 'Y')

# Populate table with fake guests & gifts
50.times do 
    add_guest(db, Faker::Name.name, Faker::Commerce.product_name, "no" )    
end

$GUESTS = db.execute('SELECT * FROM guests')

def guest_lookup(user_guest)
  $GUESTS.each do |guest|
    if guest[1] == user_guest
        puts "#{guest[1]} gave a #{guest[2]}. Thank You card status = #{guest[3]}"
    else nil
    end
  end
end

# USER INTERFACE--------------------------------

# Allows user to look-up by guest name, gift, card_sent status, or to view the whole table
user_guest = ""
until user_guest == 'none'
puts "Which guest would you like to look up? Type 'none' to exit."
user_guest = gets.chomp
guest_lookup(user_guest)
end

