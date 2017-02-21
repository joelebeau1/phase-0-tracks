# Release 3: Program for interior designers to store client details

#1) Prompt user for name, age, children & ages, decor theme, number of bathrooms/bedrooms,
# years in home, like neutral colors, like light colors, like bold colors,
# approximate budget, and any additional comments
#2) Convert user input to appropriate data type

puts "Trendy Design Inc. Client Data Form"

puts "Name:"
client_name = gets.chomp

puts "Age:"
client_age = gets.chomp.to_i

puts "Number of children:"
children_num = gets.chomp.to_i

puts "Ages of children:"
children_age = gets.chomp

puts "Preferred decor theme:"
decor_theme = gets.chomp

puts "Number of bedrooms:"
bedrooms = gets.chomp.to_f

puts "Number of bathrooms:"
bathrooms = gets.chomp.to_f

puts "Time in current home (in years):"
years_in_home = gets.chomp.to_f

puts "Prefer neutral colors [yes/no]"
neutral_input = gets.chomp.downcase
if neutral_input == "yes" || neutral_input == "y";
    prefer_neutrals = true
elsif neutral_input == "no" || neutral_input == "n";
    prefer_neutrals = false
end 

puts "Prefer light colors [yes/no]"
light_input = gets.chomp.downcase
if light_input == "yes" || light_input == "y";
    prefer_light = true
elsif light_input == "no" || light_input == "n";
    prefer_light = false
end 

puts "Prefer dark colors [yes/no]"
dark_input = gets.chomp.downcase
if dark_input == "yes" || dark_input == "y";
    prefer_dark = true
elsif dark_input == "no" || dark_input == "n";
    prefer_dark = false
end 

puts "Approximate design budget:"
design_budget = gets.chomp.to_i

puts "Additional comments or information:"
additional_info = gets.chomp

#User input and data type conversion working

#3) Store user input in a hash using symbols

new_client_info = {
    name: client_name,
    age: client_age,
    number_of_children: children_num,
    ages_of_children: children_age,
    decor_theme_preference: decor_theme,
    number_of_bedrooms: bedrooms,
    number_of_bathrooms: bathrooms,
    time_in_home: years_in_home,
    neutrals_okay: prefer_neutrals,
    light_colors_okay: prefer_light,
    dark_colors_okay: prefer_dark,
    approximate_budget: design_budget,
    additional_comments: additional_info

}

#Print hash to screen for user to review
puts "Please review and confirm your responses below:"
p new_client_info

#Provide user chance to update or correct values, skipping is user enters 'none'
#If user enters a key they want to change, prompt for new value and update
puts "If there is a response you'd like to change, 
If there are no changes you'd like to make to your responses, type 'none' to skip this step"

