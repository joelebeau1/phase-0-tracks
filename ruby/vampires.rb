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
  
  puts "SURVEY RESULTS:"
  
  # #Detection Logic
  unlikely_vampire = false
  possible_vampire = false
  probable_vampire = false
  definite_vampire = false
  
  if employee_age == real_age && garlic_preference == "Y";
    
    unlikely_vampire = true
  end
    
  if ((garlic_preference == "N") && (health_plan == "N") && (real_age != employee_age));
    
    probable_vampire = true
    
  elsif ((garlic_preference = "N" || health_plan = "N") && (real_age != employee_age));
    
    possible_vampire = true
  end 
  
  if employee_name == "DRAKE CULA" || employee_name == "TU FANG";
    
    definite_vampire = true
  end
  
  #debugging block
  # p unlikely_vampire
  # p possible_vampire
  # p probable_vampire
  # p definite_vampire
  
  if definite_vampire == true;
    puts "Definitely a vampire!"
  
  elsif unlikely_vampire == true;
    puts "Most likely not a vampire!"
    
  elsif probable_vampire == true;
    puts "Almost certainly a vampire!"
  
  elsif possible_vampire == true;
    puts "Probably a vampire!"
  end 
puts "-------------------------------------------------"

survey_reps = survey_reps -1
puts "Remaining interview candidates: #{survey_reps}"
end

case survey_reps
when survey_reps = 0 
  puts "All interview candidate surveys completed. Thank you for your interest in Werewolf Inc!"
end 