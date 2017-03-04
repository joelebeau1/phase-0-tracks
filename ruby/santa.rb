# Define santa class
# 3 instance methods:
    # Speak method
    # Eat cookies method
    #Initialize method
class Santa
# Add two getter methods to return 1) @age and 2) @ethnicity
# @gender attribute needs setter method allowing it to be reassigned outside class
    attr_reader :age, :ethnicity
    attr_accessor :gender

    def initialize(gender, ethnicity)
        puts "Initializing new Santa..."
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
            "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = rand(0..40)
        puts "New santa's gender is #{gender}, ethnicity is #{ethnicity}, age is #{age}, and reindeer preference (from first to last) is #{@reindeer_ranking}"
    end 

    def speak
        puts "Ho, ho, ho! Happy holidays!"
    end 

    def eat_milk_and_cookies(cookie)
        puts "That was a good #{cookie} cookie!"
    end 

# Add 3 attribute changing methods:
    #celebrate_birthday should age Santa by 1 year
    def celebrate_birthday(age)
        age = @age += 1
    end 

    # get_mad_at takes reindeer's name as argument and moves him to last in ranking
    def get_mad_at(reindeer)
        @reindeer_ranking << @reindeer_ranking.delete(reindeer)
    end
end

# Program to create lots of Santas (algorithm)
    # Loop to initialize an inputted number of new Santas
    # Use arrays of example genders/ethnicities to create Santas with random genders/ethnicities
    # Find randomization method in Array docs

# Set new Santas age to random number 0-40
    # Create array of possible ages 0-40 and use randomization when initializing
def santa_automater(i)
    example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
    i.times do
        Santa.new(example_genders.sample, example_ethnicities.sample)

    end

end 

# Print out attributes of each Santa using instance methods

#Different ways of initializing instances of Santa class

    # santas = []
    # example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    # example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
    # example_genders.length.times do |i|
    #   santas << Santa.new(example_genders[i], example_ethnicities[i])
    #   puts "Added new #{example_genders[i]}, #{example_ethnicities[i]} Santa"
    # end

# Driver code testing attribute changes

st_nick = Santa.new("male", "white")

p st_nick.celebrate_birthday(@age)
p st_nick.celebrate_birthday(@age)
p st_nick.celebrate_birthday(@age)

p st_nick.get_mad_at("Cupid")
p st_nick.get_mad_at("Rudolph")

st_nick.gender = "bicurious"
p st_nick.gender
p st_nick.ethnicity
p st_nick.age

santa_automater(5)









