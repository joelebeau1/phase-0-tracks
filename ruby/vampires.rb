#Ask for number of repetitions
puts "How many individuals need to take the HR Interview Survey today?"
survey_reps = gets.chomp.to_i

until survey_reps == 0 
  # Ask new employees their name,
  puts "Welcome to the Werewolf Inc. Interview Survey!"
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
  
  # If they want to enroll in company health insurance
  puts "[Y/N] Do you plan on enrolling in our company health insurance plan?"
  health_plan = gets.chomp.upcase
  
  allergy_input = nil
  until allergy_input == "done" || allergy_input == "sunshine"
    puts "Please list all allergies one at a time, and enter 'done' when you are finished"
    allergy_input = gets.chomp.downcase
    break if allergy_input == "sunshine"
  end 
  
  
  puts ""
  puts "SURVEY RESULTS:"
  
  # #Detection Logic
 vampire_status = ""
  
  if allergy_input == 'sunshine'
    vampire_status = "Probably a vampire!"

  elsif employee_name == "DRAKE CULA" || employee_name == "TU FANG";
    vampire_status = "Definitely a vampire, run away!"  

  elsif ((garlic_preference == "N") && (health_plan == "N") && (real_age != employee_age));
    vampire_status = "Almost certainly a vampire!"

  elsif ((garlic_preference = "N" || health_plan = "N") && (real_age != employee_age));
    vampire_status = "Probably a vampire"

  elsif employee_age == real_age && garlic_preference == "Y";
    vampire_status = "Most likely not a vampire"

  else vampire_status = "TBD"

  end 

  puts vampire_status
  
  #debugging block
  # p unlikely_vampire
  # p possible_vampire
  # p probable_vampire
  # p definite_vampire
  
puts "-------------------------------------------------"

survey_reps -= 1

puts "Remaining interview candidates: #{survey_reps}"
end

case survey_reps
when survey_reps = 0 
  puts "All interview candidate surveys completed. Thank you for your interest in Werewolf Inc!"
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."