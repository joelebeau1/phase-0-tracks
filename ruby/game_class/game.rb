# Word-guessing game with 1) a class designed for computer program ONLY, 
# and 2) driver code that handles user input/output, aka bridges gap between human <-> Ruby

# Game Requirements:
    # 1. One user can enter a word and another user attempts to guess word

    # 2. Number of guesses limited based on word length

    # 3. Repeated guesses don't count toward guess count

    # 4. Guessing player receives continual feedback on current state of word;
        # like hangman, if secret word is "dog" the guessing player starts with "- - -",
        # and after guessing "d" would see "d - -"

    # 5. Congrats message for user if victorious, taunting message if they fail

    # 6. (Optional) Add features to support secret phrases in addition to secret words

#  BUSINESS LOGIC---------------------------------
# Game class

class WordGame

attr_accessor :secret_word, :guess_count, :guess_limit, :victory, :guessed_letter, :progress_message, :correct_guess, :new_progress_message

def initialize
  @secret_word = ""
  @guess_count = 0
  @victory = false
  @guess_limit = 0
  @guessed_letter = ""
  @correct_guess = false
end

# Set a limit on the number of guesses based on secret word length: 2 guesses per letter
def calculate_limit(word)
  @guess_limit = (word.length * 2)
end

# Check to see if the secret word contains a guessed letter 
def check_guess(word, guess)
  if word.include? guess
    @correct_guess = true

  elsif !word.include? guess
    @correct_guess = false
  end
end

# Establish the starting word status feedback message to a string with one "-" to represent each letter in secret word
def set_progress_msg(word)
  @progress_message = ("-" * word.length)
  @progress_message
end

# Update feedback message to include correctly guessed letters in place of "-"
def track_progress(word, guess, correct_guess, progress_message)
    
  if @correct_guess == true

    @index_of_correct_letter = word.index(guess)

    @inserted_prog_msg = @progress_message.insert(@index_of_correct_letter, guess)

    @inserted_prog_msg.slice!(@index_of_correct_letter + 1)

    @new_progress_message = @inserted_prog_msg

    puts "Correct! The secret word is #{@new_progress_message}"
    @new_progress_message

  else puts "Incorrect! Guess again, the secret word is #{@new_progress_message}"
    @new_progress_message
  end
end

# Check for victory conditions, in which the status of the guessed word equals the secret word
def check_for_victory(word, new_progress_message)
  if word == @new_progress_message
    @victory = true
    true
  end
end

end
 

# DRIVER CODE / UI-------------------------------------

game = WordGame.new
@guess_count = 0

puts "Player 1, please enter a secret word:"
@secret_word = gets.chomp.downcase
puts ""

@guess_limit = game.calculate_limit(@secret_word)
game.set_progress_msg(@secret_word)

puts "Player 2, you have #{game.calculate_limit(@secret_word)} guesses to guess the secret word"
puts ""

puts "The secret word is #{game.set_progress_msg(@secret_word)}"
puts ""

# Establish the length of the game to be the guess limit
until @guess_count == @guess_limit
  @guess_count += 1

  puts "Player 2, enter a letter to guess, or type 'qq to quit"
  @guessed_letter = gets.chomp.downcase

# Allow user to quit early
  break if @guessed_letter == "qq"

  puts ""

# Run looping guess checks and updating word status feedback message
  game.check_guess(@secret_word, @guessed_letter)

  game.track_progress(@secret_word, @guessed_letter, @correct_guess, @progress_message)

# Break game loop when victory conditions are met and print congrats message
  if game.check_for_victory(@secret_word, @new_progress_message) == true
    puts "Congratulations! You guessed the word! The word is #{@secret_word}"
    break
  end

#Update user each time they use a guess with their remaining number of guesses
  puts "You have #{@guess_limit - @guess_count} guesses left"
  puts ""
end 

# If all guesses are used by user and victory conditions aren't met, print defeat message
if !game.check_for_victory(@secret_word, @new_progress_message)
  puts "Oh no, you couldn't guess the word! So sad :("
end
