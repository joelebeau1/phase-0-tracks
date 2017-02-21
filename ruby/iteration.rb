#Release 0: Exploring block syntax

def practice_method (value_1, value_2)
    sum = value_1 + value_2
    product = value_1 * value_2
    p "the block hasn't run yet"
    yield(sum, product)
    # sum + product
end 

puts practice_method(2, 4) { |value_1, value_2| p "this block is running on #{value_1} and #{value_2}" }

#RELEASE 1

neighborhoods = ["wicker park", "andersonville", "lake view", "lincoln park", "the loop"]
bars = {wicker_park: "handlebar", lincoln_park: "blues", andersonville: "hopleaf", lake_view: "tavern", the_loop: "bar louie"}

neighborhood_string = "Neighborhoods in Chicago include: "

#Not a WONDERFUL example, but a way to show how to effect something with .each
neighborhoods.each do |neighborhood|
    neighborhood_string += "#{neighborhood}, "
end

puts neighborhood_string

bars.each do |neighborhood, bar|
    puts "A bar in #{neighborhood.to_s.sub(/[_]/, " ")} is #{bar}"
end

#Capitalize each word
p neighborhoods
neighborhoods.map! do |neighborhood|
    words = neighborhood.split
    words.map! do |word|
        word.capitalize
    end
    neighborhood = words.join(" ")
end
p neighborhoods


# RELEASE 2 - UNCOMMENT BETWEEN NUMBERS TO CHECK CODE.
# CODE UNDER THE NUMBER CORRESPONDS TO NUMBER

# 1: Deleting array & hash items when certain conditions are met using .delete_if method

neighborhoods.delete_if do |neighborhood|
    neighborhood.include? " "
end
p neighborhoods

bars.delete_if do |neighborhood, bar|
    bar.length > 6
end
p bars

# 2. Filtering data structures for only those items that meet certain conditions using .keep_if method
# # SHOULD RETURN SAME AS ABOVE

neighborhoods.keep_if do |neighborhood|
    !neighborhood.include? " "
end
p neighborhoods

bars.keep_if do |neighborhood, bar|
    bar.length <= 6
end
p bars

# 3- Another method of filtering data structures for items meeting certain conditions using .select!
# Should return same as #1 & #2

neighborhoods.select! do |neighborhood|
    !neighborhood.include? " "
end
p neighborhoods

bars.select! do |neighborhood, bar|
    bar.length <= 6
end
p bars


# 4. Removing items from data structures until block condition evaluates to false, then stopping
# using .drop_while method
# **NOTE** drop_while doesn't work for hashes because they aren't ordered, so they can't be evaluated
# serially like arrays; instead, we had keep_if method run until the hash length was decreased due to deleted items 
new_neighborhoods = neighborhoods.drop_while do |neighborhood|
    neighborhood.include? " "
end
p new_neighborhoods

bars.keep_if do |neighborhood, bar|
    bar.length <= 6
    if bar.length <= 6
        break
    end
end
p bars