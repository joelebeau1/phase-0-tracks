# Program to track and manage list of wedding guests, gifts, and whether or not a thank you card has been sent

require 'sqlite3'
require 'faker'

# BUSINESS LOGIC-------------------------------------------------------
db = SQLite3::Database.new("guests.db")

# Create a table to store guests name, the gift they gave, and whether or not a thank-you card has been sent
create_table_sql = <<-SQL
  CREATE TABLE IF NOT EXISTS guests(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  gift VARCHAR(255),
  card_sent VARCHAR(10)
  )
  SQL

db.execute(create_table_sql)

# Populate table with fake guests & gifts, default thank-you card status set to "no"
def add_guest(db, name, gift, card_sent)
  db.execute('INSERT INTO guests (name, gift, card_sent) VALUES (?,?,?)', [name, gift, card_sent])
end 

# Loop that populates table with fake info commented out to avoid adding 50 rows every time program is run

# 50.times do 
#   add_guest(db, Faker::Name.name, Faker::Commerce.product_name, "not sent" )    
# end

# Store all table data in global variable to be accessed inside of methods; data type is an array, with each guest's info is stored in a nested array
$GUESTS = db.execute('SELECT * FROM guests')

# Method that allows user to look up a guests info by guest name and prints out info in user-friendly format
def guest_lookup(user_guest)
  # Iterates through database and accesses each guest's info by array index: [1] = name, [2] = gift, [3] = card status
  $GUESTS.each do |guest|
    if guest[1] == user_guest
      puts "#{guest[1]} gave a #{guest[2]}, and their thank-you card status is: #{guest[3]}"
      puts ""
    else nil
    end
  end
end

# Method that allows user to look up a guests info by gift and prints out info in user-friendly format, similar to guest_lookup method
def gift_lookup(gift)
  $GUESTS.each do |guest|
    if guest[2] == gift
      puts "A #{guest[2]} was given by #{guest[1]}, and their thank-you card status is: #{guest[3]}."
      puts ""
    else nil
    end
  end
end

# Method that allows user to view all guests who's thank-you card status matches user input
def card_status_lookup(status)
  $GUESTS.each do |guest|
    if guest[3] == status
      puts "For #{guest[1]}'s gift of #{guest[2]}, thank-you card status is: #{guest[3]}"
    else nil
    end
  end
end

# Method that allows user to view all guest's info in user-friendly format
def view_all
  $GUESTS.each do |guest|
    puts "#{guest[1]} gave a #{guest[2]}, and their thank-you card status is: #{guest[3]}"
    puts ""
  end
end

# Method that allows user to add new guests to the list with the guest's name, gift, and thank-you card status; also prints out confirmation message.
# Requires database as an argument so that database variable does not have to be set with global scope
def user_add_guest(db, new_name, gift, card_status)
  # Interpolate user input into database table
  db.execute("INSERT INTO guests (name, gift, card_sent) VALUES (?,?,?)", [new_name, gift, card_status])
  puts "You added #{new_name}, their gift of #{gift}, and their thank-you card status of: #{card_status}"
end

# Method that allows user to update a guest's thank-you card status and prints out confirmation message
# Requires database as an argument so that database variable does not have to be set with global scope
def update_card_status(db, guest_to_update, card_status)
  $GUESTS.each do |guest|
    if guest[1] == guest_to_update
      db.execute("UPDATE guests SET card_sent=? WHERE name=?", [card_status, guest_to_update])
      puts "For #{guest_to_update}'s gift of #{guest[2]}, you have updated their thank-you card status to: #{card_status}"
    else nil
    end
  end
end

# Method that allows user to change the gift info for an existing guest and prints out confirmation message
# Requires database as an argument so that database variable does not have to be set with global scope
def update_gift(db, guest_to_update, new_gift)
  $GUESTS.each do |guest|
    if guest[1] == guest_to_update
      db.execute("UPDATE guests SET gift=? WHERE name=?", [new_gift, guest_to_update])
      puts "You have updated #{guest_to_update}'s gift to #{new_gift}."
    else nil
    end
  end
end


# USER INTERFACE--------------------------------

# Allows user to look-up by guest name, gift, card_sent status, view the whole table, or edit table info
user_input = ""
until user_input == 'exit'
  puts "Welcome to your Wedding Gift Tracker. How would you like to access your list? You can type 'edit', 'guest look-up', 'gift look-up', 'view by card status', 'view all', or 'exit'"
  user_input = gets.chomp
  # Methods are used conditionally based on user input

    # Allow user to look up a guest's info by guest name
    if user_input == "guest look-up"
      puts "Which guest would you like to look up? Type 'none' to exit."
      user_guest = gets.chomp
      break if user_guest == 'none'
      guest_lookup(user_guest)

   # Allow user to look up a guest's info by the type of gift they gave
    elsif user_input == "gift look-up"
      puts "Which gift would you like to look up? Type 'none' to exit."
      user_gift = gets.chomp
      break if user_gift == 'none'
      gift_lookup(user_gift)

    # Allow user to view all guests who's thank-you card has either been sent or has not been sent, based on user input
    elsif user_input == "view by card status"
      puts "Which cards would you like to view? Please enter 'sent' or 'not sent' now, or type 'none' to exit."
      user_card = gets.chomp.downcase
      break if user_card == 'none'
      card_status_lookup(user_card)

    # Allow user to view all table data
    elsif user_input == "view all"
      view_all

    # Edit menu is separated from info look-up/view table logic so that users can choose what they specifically want to change
    elsif user_input == "edit"
      puts "What would you like to edit? You may enter 'add a guest', 'update gift', 'update card status', or 'none'"
      edit_input = gets.chomp
      break if edit_input == 'none'

        # Allow user to add a guest to the list, and prompt them for the guest's gift and thank-you card status
      if edit_input == "add a guest"
        puts "Please enter the new guest's name now:"
        new_guest = gets.chomp
        puts "Please enter the new guest's gift now:"
        new_gift = gets.chomp
        puts "What is the status of their thank-you card? Please enter 'sent' or 'not sent' now:"
        new_card_status = gets.chomp
        user_add_guest(db, new_guest, new_gift, new_card_status)

        # Allow user to update the status of a guest's thank-you card
      elsif edit_input == "update card status"
        puts "Please enter the name of the guest you'd like to update now:"
        updated_guest = gets.chomp
        puts "Please enter their updated thank-you card status now:"
        new_card_status = gets.chomp
        update_card_status(db, updated_guest, new_card_status)
        
        # Allow user to change the gift given by a guest
      elsif edit_input == "update gift"
        puts "Please enter the name of guest you'd like to update now:"
        updated_guest = gets.chomp
        puts "Please enter their updated gift now:"
        updated_gift = gets.chomp
        update_gift(db, updated_guest, updated_gift)
        end
    end
end

