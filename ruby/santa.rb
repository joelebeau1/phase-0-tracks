# Define santa class
# 3 instance methods:
    # Speak method
    # Eat cookies method
    #Initialize method
class Santa

    def initialize(gender, ethnicity)
        puts "Initializing new Santa..."
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
            "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end 

    def speak
        puts "Ho, ho, ho! Happy holidays!"
    end 

    def eat_milk_and_cookies(cookie)
        puts "That was a good #{cookie} cookie!"
    end 
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "Added new #{example_genders[i]}, #{example_ethnicities[i]} Santa"
end