class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def roll_over
    puts '*rolls over*'
  end
  
  def speak(i)
    i.times{ |bark| puts "Woof!"}
  end
  
  def dog_years(age)
    dog_age = age.to_i * 7
    puts "You are #{dog_age} in dog years! Woof..."
  end
  
  def sit 
    puts '*sits down almost immediately*'
  end
  
  def initialize
    puts "Initializing new puppy instance..."
  end
end

lou = Puppy.new
lou.fetch('tennis ball')
lou.roll_over
lou.speak(3)
lou.dog_years(28)
lou.sit

class Kitten

  def initialize
    puts "Initializing new kitten instance..."
  end

  def cat_nap(hours)
    nap_time = hours * 3
    puts "You took a #{nap_time} hour cat nap!"
  end

  def play(toy)
    puts "Kitten played with #{toy}!"
  end

end

kittens = []


50.times do Kitten.new
  kittens << Kitten.new
end

p kittens

kittens.each do |kitten| 
  p kitten.cat_nap(2)
end

kittens.each do |kitten|
  p kitten.play("yarn")
end

# We would want to improve upon this by adding names to each kitten as it iterates through the loop
# Could interpolate names into the instance methods 