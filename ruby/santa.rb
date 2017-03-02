# Define santa class
class Santa

    def initialize
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
# 3 instance methods:
    # Speak method
    # Eat cookies method
    #Initialize method

chris_kringle = Santa.new
chris_kringle.speak
chris_kringle.eat_milk_and_cookies("peanut butter")
