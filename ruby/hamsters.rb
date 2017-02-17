puts "Welcome to the Hamster Adoption Mega-Center!"

#Hamster's name 
# String
puts "1. What is your hamster's name?"
hamster_name = gets.chomp

#Volume level 1-10 
# interger 

puts "2. On a scale from 1-10, how loud is your hamster, with 1 being very quiet and 10 being extremely loud?"

volume_level = gets.chomp

#Fur color 
#string 

puts "3. What color is your hamster's fur?"

fur_color = gets.chomp

# Good candidate for adoption? 
#boolean T/F 

puts "4. [Yes/No] is this hamster a good candidate for adoption?"

adoption_candidate = gets.chomp

#Estimated age 
#Interger and nil 

puts "5. What is your hamsters estimated age in years?"

hamster_age = gets.chomp

#print final results to console

puts "Thank you for completing our intake form, view results below:"

puts "Hamster name: #{hamster_name}"
puts "Hamster's volume level: #{volume_level}"
puts "Fur color: #{fur_color}"
puts "Adoption candidate? #{adoption_candidate}"
puts "Hamster estimated age: #{hamster_age}"
