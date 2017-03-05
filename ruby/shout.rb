# # Release 1:
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

module Shout

    def yell_angrily(words)

        words + "!!!" + " :("
    end 

    def yell_happily(words)

        words + "!" + " :)" + "I'm so happy!"
    end

    def startled_yell(words)

        "AHH! " + words + " That startled me!"
    end

end 