# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Gives the ability to import data from a different file that's in
# the same directory. 
# Require would be necessary for pulling in data from files that
# are not in the same directory. Have to specify the path.
require_relative 'state_data'

class VirusPredictor
  # Initializing a new instance of VirusPredictor and passing in
  # the required arguments from the state_data file. Assigning 
  # everything as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs two other instance methods one after another
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  # Sets all methods beneath to not be called outside of the
  # class declaration
  private

  # Passing in state_data and returns results based on population_density
  # Creates a new variable called number_of_deaths
  # Output is a string with state name & number_of_deaths
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Input: population_density & state from state_data
  # Based on population density, returns a speed
  # Output: String showing the speed of the virus spread
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# Method for comprehensive report
# Iterate through STATE_DATA hash
# For each state, initialize an instance of the VirusPredictor class
# Pass in the corresponding state data
# Run the virus_effects method on each state
def national_report(data_hash)
  data_hash.each do |state, pop_info|
    state = VirusPredictor.new(state,
      pop_info[:population_density],
      pop_info[:population])
    state.virus_effects
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

national_report(STATE_DATA)
#=======================================================================
# Reflection Section