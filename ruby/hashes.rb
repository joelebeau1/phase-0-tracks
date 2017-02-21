#Prompt user for name, age, children & ages, decor theme, number of bathrooms/bedrooms,
# years in home, like neutral colors, like light colors, like bold colors,
# approximate budget, and any additional comments

#Convert user input to appropriate data type

puts "Thank you for your interest in Trendy Design Inc."
puts "Please fill out this short form with your personal details and design preferences"

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

#Store user input in a hash using symbols

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

#Print hash out to screen



#Provide user chance to update or correct values, skipping is user enters 'none'
#If user enters a key they want to change, prompt for new value and update