module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)" + " I'm so happy!"
  end 

end 

# Driver Code
p Shout.yell_angrily("You can't ground me, I quit")
p Shout.yelling_happily("I'm not grounded anymore")