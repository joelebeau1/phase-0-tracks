# # Release 1: Shout module as Standalone
# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)" + " I'm so happy!"
#   end 

# end 

# # Driver Code
# p Shout.yell_angrily("You can't ground me, I quit")
# p Shout.yelling_happily("I'm not grounded anymore")

# Release 3: Shout module as mixin
module Shout

    def yell_angrily(words)
        puts words + "!!!" + " :("

    end 

    def yell_happily(words)
        puts words + "!" + " :)" + " I'm so happy!"

    end
end 

class Toddler
  include Shout 

end 

class Teenager
  include Shout

end

# Driver code
timmy = Toddler.new
timmy.yell_angrily("My tooth just fell out")
timmy.yell_happily("I woke up with money under my pillow")

samantha = Teenager.new
samantha.yell_angrily("This house is like a prison, worst parents ever")
samantha.yell_happily("Thanks for the new car Mom and Dad")



