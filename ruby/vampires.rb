# Ask new employees their name,
puts "Welcome to the Werewolf Inc. New Employee Survey!"
puts "First, what is your full legal name?"
employee_name = gets.chomp.upcase

# Age & birth year
puts "Next, what is your age in years?"
employee_age = gets.chomp.to_i

puts "In what year were you born?"
birth_year = gets.chomp.to_i

real_age = 2017 - birth_year

# If they want garlic bread from cafeteria

puts "[Y/N] I am interested in ordering garlic bread from the company cafeteria"
garlic_preference = gets.chomp.upcase
if garlic_preference == "Y"
    eats_garlic = true
elsif garlic_preference == "YES"
  eats_garlic = true
elsif garlic_preference == "N"
    eats_garlic = false
elsif garlic_preference == "NO"
  eats_garlic = false
end

# If they want to enroll in company health insurance
puts "[Y/N] Do you plan on enrolling in our company health insurance plan?"
health_plan = gets.chomp.upcase
if health_plan == "Y"
    immortal_being = false
elsif health_plan == "YES"
  immortal_being = false
elsif health_plan == "N"
    immortal_being = true
elsif health_plan == "NO"
  immortal_being = true
end

#Detection Logic
if employee_age = real_age && eats_garlic = true
    secret_vampire == "Probably not a vampire"

elsif real_age != employee_age && (eats_garlic = false || immortal_being = true)
    secret_vampire == "Probably a vampire"

elsif real_age != employee_age && eats_garlic = false && immortal_being = true
    secret_vampire == "Almost certainly a vampire"

elsif employee_name = "DRAKE CULA" 
    secret_vampire == "Definitely a vampire, run away!"

 elsif employee_name = "TU FANG" 
    secret_vampire == "Definitely a vampire, run away!"

else
    puts "Results inconclusive"



    
puts "Thank you for completing our survey, your results are displayed below:"
puts "Name: #{employee_name.}"
puts "Age: #{employee_age}"
puts "Year of birth: #{birth_year}"
puts "Garlic bread preference: #{garlic_preference}"
puts "Enrolling in company health insurance: #{health_plan}"

puts "END OF SURVEY: DO NOT READ BELOW THIS LINE!"


