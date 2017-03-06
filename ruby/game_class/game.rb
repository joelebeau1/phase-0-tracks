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

# Getter method variables: secret word, guess limit, victory/defeat conditionals

# Setter method variables: guess count, guessed letter, feedback message

class WordGame
    attr_accessor :secret_word, :guess_count, :letter_guessed, :guess_limit, :victory, :defeat, :feedback_msg

    def initialize
        @guess_count = 0
        @victory = false
        @defeat = false
    end

    # def print_feedback(word)
    #     @feedback_msg = (" - " * @secret_word.length)

    # end

    def calculate_limit(word)
        @guess_limit = word.length
    end

    # def check_guess

    # end

end 

# DRIVER CODE / UI-------------------------------------
puts "Welcome to the Game of Words!"
game = WordGame.new

# Player 1 enters secret word
puts "Player 2, please close your eyes!"
puts "Player 1, please enter a secret word!"

@secret_word = gets.chomp.downcase

# Tell players the number of guesses allowed
puts "Player 2, you have #{game.calculate_limit(@secret_word)} guesses"

#Player 2 enters guesses
puts "Player 2, please enter a letter to guess"
@letter_guessed = gets.chomp.downcase

p @secret_word
p @guess_limit
p @letter_guessed

# Player feedback on state of secret word

# Congrats/taunting message
