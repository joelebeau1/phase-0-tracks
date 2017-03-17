# Wedding gift & thank-you card tracker


# Allows user to look-up by guest name, gift, card_sent status, or to view the whole table

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

50.times do 
    add_guest(db, Faker::Name.name, Faker::Commerce.product_name, "no" )    
end