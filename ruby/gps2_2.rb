# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash to store the items into
  # write a method that takes in a string 
  # create a list array by splitting the string by separate words
  # set the string as the key in the hash
  # set default quantity = 1
  # print the list to the console - print method
# output: hash

# Method to add an item to a list
# input: list (an empty hash), item name, and optional quantity=1
# steps: save the key and value to the hash
# output: the updated hash

# Method to remove an item from the list
# input: list, item 
# steps: delete the key value pair
# output: the updated hash

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: 
#look through the list for match
# update the item for the new quantity
# output: the updated hash

# Method to print a list and make it look pretty
# input: list
# steps: 
# output: list

def create_list(grocery_items)
  list = {}
  items_array = grocery_items.split
  items_array.each do |item|
  list[item] = 1
  end 
  list 
end 

def add_item(list,item,quantity)
  list[item] = quantity
  list
end 

def remove_item(list,item)
  list.delete(item)
  list
end 

def update_item(list,item,quantity)
  list[item] = quantity
  list 
end 

def print_list(list)
  puts "-----------------"
  list.each do |item,quantity|
    p "#{item}: #{quantity}"
  end 
  puts "------------------"
end 


# list = create_list("carrots apples cereal pizza")
# add_item(list,"salad",1)
# p remove_item(list,"pizza")
# p update_item(list,"salad",3)
# print_list(list)

list = create_list("lemonade tomatoes onions ice_cream")
p update_item(list,"lemonade",2)
p update_item(list,"tomatoes",3)
p update_item(list,"ice_cream",4)
p remove_item(list,"lemonade")
p update_item(list,"ice_cream",1)
print_list(list)
