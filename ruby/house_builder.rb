# Allow user to create a house, add rooms, then add items


# Business logic

def add_room_to_house!(house, room_name)
    return false if house.keys.length == 5
    house[room_name] = []
    return true
end 

def add_item!(house, room_name, item_name)
    house[room_name] << item_name
end

house = {}

# User interface

def print_house(house)
    puts "--------------------"
    puts "Current house configuration:"
    house.keys.each_with_index do |room_name, index|
        puts "#{index} - #{room_name}: #{house[room_name]}"
    end 
    puts "---------------------"
end 

# Let the user add rooms
can_add_rooms = true 

# Stop loop when rooms cannot be added
while can_add_rooms
    # Get a room name from user
    puts "Enter room name to add (or type 'done')"
    room_name = gets.chomp
    # If user is done, stop loop, otherwise add room
    break if room_name == 'done'
    can_add_rooms = add_room_to_house!(house, room_name)
    print_house(house)
    if !can_add_rooms
        puts "Sorry, that's too many rooms!"
    end 
end 

# Let the user add items to rooms
# In an infinite loop:
loop do 
    # Ask user for the number of the room they want to add items to
    puts "Enter the number of the room to add item to (or type 'done'):"
    inputted_index = gets.chomp
    # If user is done,break
    break if inputted_index == 'done'
    # Otherwise, add item
    room_index = inputted_index.to_i
    puts "Enter the item to add:"
    item_to_add = gets.chomp
    add_item!(house, house.keys[room_index], item_to_add)
    print_house(house)
end 


