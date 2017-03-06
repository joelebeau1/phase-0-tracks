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

attr_accessor :secret_word, :guess_count, :guess_limit, :victory, :defeat, :guessed_letter, :feedback_message, :correct_guess

def initialize
    @secret_word = ""
    @guess_count = 0
    @victory = false
    @defeat = false
    @guess_limit = 0
    @guessed_letter = ""
    @feedback_message = ""
    @correct_guess = false
end

def calculate_limit(word)
    @guess_limit = word.length
end

def check_guess(word, guess)
    if word.include? guess
        @correct_guess = true
    else 
        @correct_guess = false
    end
end

# Guesser feedback/progress:
  # Replace "-" at index of word[guess] with guess
    # Starts as "- - - -" same length as secret word, sub "-" for letters
    # Updates with correct guesses; sub correct letter for "-" in correct letter spot
    # Need index values for:
        # Correct letter guessed in secret word: i.e. "g" in "dog" = [2]
        # Index in progress message to be replaced with correct letter

def track_progress(word, guess, correct_guess)
    @progress_message = ("-" * word.length)
    if @correct_guess == true
        @progress_message.sub!(word.index(guess), guess)
        puts "Correct! The secret word is #{@progress_message}"
    else puts "Incorrect, guess again!"
    end
end

# Victory condition
    # When progress == secret word, victorious

def check_for_victory(progress, secret)
    if progress == secret
        @victory = true
    else @victory = false
    end
end

# Defeat condition
    # Guess count == guess limit and progress != secret word

def check_for_defeat(count, limit)
    if count == limit
        @defeat = true
    else @defeat = false
    end
end

end
 

# DRIVER CODE / UI-------------------------------------

game = WordGame.new

# Player 1 enters secret word
puts "Player 1, please enter a secret word:"
@secret_word = gets.chomp.downcase
game.calculate_limit(@secret_word)

# Tell players the number of guesses allowed
puts "Player 2, you have #{game.calculate_limit(@secret_word)} guesses to guess the secret word"


# Loop:
    # Player 2 enters guess
    # Guess is correct or wrong
    # Print out feedback message
    # End loop and print victory message is victory conditions met
    # End loop and print defeat message after guess count = guess limit and victory conditions not met

