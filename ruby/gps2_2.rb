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

#------ DRIVER CODE-----------
# list = create_list("carrots apples cereal pizza")
# add_item(list,"salad",1)
# p remove_item(list,"pizza")
# p update_item(list,"salad",3)
# print_list(list)

# Release 2: Test Solution
list = create_list("lemonade tomatoes onions ice_cream")
p update_item(list,"lemonade",2)
p update_item(list,"tomatoes",3)
p update_item(list,"ice_cream",4)
p remove_item(list,"lemonade")
p update_item(list,"ice_cream",1)
print_list(list)

# Release 4: Reflect

# 1. This challenge taught me to thoroughly pseudocode each method and requirements in the smallest
# increments possible, breaking down method into the most basic steps it needs to accomplish. This makes
# it easier to conceptualize what each method intakes, does, and outputs, and really helps me think carefully
# about what each line of code is really doing.

# 2. In this challenge, we quickly decided that a hash would be ideal for our list since each list item (key),
# needed to be associated with a specific value (quanity). Our first method, however, turned the inputted string of 
# list items into an array because we thought that arrays would be easier to manipulate and iterate through when turning
# the inputted string into a hash.

# 3. A method returns the last line of code that Ruby evaluates within the method. We had to be aware of this when writing our
# method for removing list items, since the Ruby docs told us that the ".delete" built-in method deletes a key-value pair from a hash BUT
# it returns the value of the deleted k-v pair, so we had to add a line of code after the ".delete" method to tell our method to return the 
# modified list.

# 4. Methods can have any data type passed into them- strings, booleans, integers, floats, hashes, arrays- and we also realized when tinkering 
# with our driver code that the results of one method can be passed into another method as an argument. We proved this by passing the output of our "create_list" method
# into our "add_item" method as the "list" argument for that method.

# 5. Like I stated above, we realized that info can be passed between methods by passing the output of one method into a second method as one of the 2nd method's arguments.
# Or, as illustrated in our final driver code, information from one method can be passed into a 2nd method by storing the output of the first method in a new variable, which
# is then passed into the 2nd method. As far as I can tell thus far, however, only the output from one method can be passed into another, whereas anything else that occurs inside
# a method's local scope is not available to other methods without using classes and instance variables.

# 6. This challenge really solidifed the concepts of method input and output for me, and also the importance of solid, well-written pseudocode. Additionally, I feel much more confident
# in my data manipulation skills after completing this challenge and learning from my pair. I'm still not 100% certain of my iteration skills though, as I had to rely on my pair for much
# of that logic, so I will definitely look for opportunities to sharpen these skills on my end.




