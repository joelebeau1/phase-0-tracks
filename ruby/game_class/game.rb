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

# Variables: guess limit, guessed letter, feedback message,

def WordGame

def initialize
    @secret_word = ""
    @guess_count = 0
    @victory = false
    @defeat = false
end

# User guesses as letters

# Guess limit number = secret word length

# Check if guess is correct or wrong

# Guesser feedback/progress:
    # Starts as "- - - -" same length as secret word, sub "-" for letters
    # Updates with correct guesses; sub correct letter for "-" in correct letter spot
    # Need index values for:
        # Correct letter guessed in secret word: i.e. "g" in "dog" = [2]
        # Index in progress message to be replaced with correct letter

# Print feedback/progress method

# Victory condition
    # When progress == secret word, victorious

# Defeat condition
    # Guess count == guess limit and progress != secret word

end
 

# DRIVER CODE / UI-------------------------------------

# Player 1 enters secret word
# Store user input for secret word

# Tell players the number of guesses allowed

# Loop:
    # Player 2 enters guess
    # Guess is correct or wrong
    # Print out feedback message
    # End loop and print victory message is victory conditions met
    # End loop and print defeat message after guess count = guess limit and victory conditions not met

