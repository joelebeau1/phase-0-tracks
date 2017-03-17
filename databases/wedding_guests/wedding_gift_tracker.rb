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

# Populate table with fake guests & gifts

# 50.times do 
#     add_guest(db, Faker::Name.name, Faker::Commerce.product_name, "no" )    
# end

$GUESTS = db.execute('SELECT * FROM guests')

def guest_lookup(user_guest)
  $GUESTS.each do |guest|
    if guest[1] == user_guest
        puts "#{guest[1]} gave a #{guest[2]}, and their thank-you card status = #{guest[3]}"
        puts ""
    else nil
    end
  end
end

def gift_lookup(gift)
  $GUESTS.each do |guest|
    if guest[2] == gift
        puts "A #{guest[2]} was given by #{guest[1]}, and their thank-you card status is: #{guest[3]}."
        puts ""
    else nil
    end
  end
end

def card_status_lookup(status)
    $GUESTS.each do |guest|
        if guest[3] == status
            puts "For #{guest[1]}'s gift of #{guest[2]}, thank-you card status is: #{guest[3]}"
        else nil
        end
    end
end

def view_all
    $GUESTS.each do |guest|
        puts "#{guest[1]} gave a #{guest[2]}, and their thank-you card status is: #{guest[3]}"
    end
end

def user_add_guest(db, new_name, gift, card_status)
  db.execute("INSERT INTO guests (name, gift, card_sent) VALUES (#{new_name}, #{gift}, #{card_status}")
  puts "You added #{new_name}, their gift of #{gift}, and their thank-you card status of: #{card_status}"
end

def update_card_status(db, guest_to_update, card_status)
    $GUESTS.each do |guest|
        if guest[1] == guest_to_update
            db.execute("UPDATE guests SET card_sent=#{card_status} WHERE name=#{guest_to_update}")
            puts "For #{guest_to_update}'s gift of #{guest[2]}, you have updated their thank-you card status to: #{card_status}"
        else nil
        end
    end
end

# USER INTERFACE--------------------------------

# Allows user to look-up by guest name, gift, card_sent status, or to view the whole table
user_input = ""
until user_input == 'exit'
  puts "Welcome to your Wedding Gift Tracker. How would you like to access your list? You can type 'edit', 'guest look-up', 'gift look-up', 'view by card status', 'view all', or 'exit'"
  user_input = gets.chomp
    if user_input == "guest look-up"
        puts "Which guest would you like to look up? Type 'none' to exit."
        user_guest = gets.chomp
        break if user_guest == 'none'
        guest_lookup(user_guest)

    elsif user_input == "gift look-up"
        puts "Which gift would you like to look up? Type 'none' to exit."
        user_gift = gets.chomp
        break if user_gift == 'none'
        gift_lookup(user_gift)

    elsif user_input == "view by card status"
        puts "To look up thank-you cards that have been sent, type 'yes'; to look up cards that have not been sent, type 'no'; or type 'none' to exit."
        user_card = gets.chomp.downcase
        break if user_card == 'none'
        card_status_lookup(user_card)

    elsif user_input == "view all"
        view_all

    elsif user_input == "edit"
        puts "What would you like to edit? You may enter 'add a guest', 'update gift', 'update card status', or 'none'"
        edit_input = gets.chomp
        break if edit_input == 'none'
        if edit_input == "add a guest"
            puts "Please enter the new guest's name now:"
            new_guest = gets.chomp
            puts "Please enter the new guest's gift now:"
            new_gift = gets.chomp
            puts "Has their thank-you card been sent? Please enter 'yes' or 'no' now:"
            new_card_status = gets.chomp
            user_add_guest(db, new_guest, new_gift, new_card_status)

        elsif edit_input == "update card status"
            puts "Please enter the name of the guest you'd like to update now:"
            updated_guest = gets.chomp
            puts "Please enter their updated thank-you card status now:"
            new_card_status = gets.chomp
            update_card_status(db, updated_guest, new_card_status)
        end

    end
end

