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

attr_accessor :secret_word, :guess_count, :guess_limit, :victory, :guessed_letter, :progress_message, :correct_guess

def initialize
    @secret_word = ""
    @guess_count = 0
    @victory = false
    @guess_limit = 0
    @guessed_letter = ""
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

def set_progress_msg(word)
    @progress_message = ("-" * word.length)
    @progress_message
end

def track_progress(word, guess, correct_guess, progress_message)
    if @correct_guess == true

        @index_of_correct_letter = word.index(guess)
        @new_progress_message = @progress_message.sub!(@progress_message[@index_of_correct_letter], guess)

        puts "Correct! The secret word is #{@new_progress_message}"

    else puts "Incorrect, guess again!"
    end

    p @progress_message
    p @new_progress_message
    p word
end

def check_for_victory(word, new_progress_message)
        if word == @new_progress_message
         @victory = true
         @victory
        end
end


# Victory condition
    # When progress == secret word, victorious

# # Defeat condition
#     # Guess count == guess limit and progress != secret word

# def check_for_defeat(count, limit)
#     if count == limit
#         @defeat = true
#     else @defeat = false
#     end
# end

end
 

# DRIVER CODE / UI-------------------------------------

game = WordGame.new
@guess_count = 0

# Player 1 enters secret word
puts "Player 1, please enter a secret word:"
@secret_word = gets.chomp.downcase
puts ""

@guess_limit = game.calculate_limit(@secret_word)
game.set_progress_msg(@secret_word)

# Tell players the number of guesses allowed
puts "Player 2, you have #{game.calculate_limit(@secret_word)} guesses to guess the secret word"
puts ""

puts "The secret word is #{game.set_progress_msg(@secret_word)}"
puts ""
# Loop:

until @guess_count == @guess_limit

    @guess_count += 1

    puts "Player 2, enter a letter to guess"
    @guessed_letter = gets.chomp.downcase

    puts ""
    game.check_guess(@secret_word, @guessed_letter)
    puts ""

    game.track_progress(@secret_word, @guessed_letter, @correct_guess, @progress_message)
    puts ""

    if game.check_for_victory(@secret_word, @new_progress_message) == true
        puts "Congratulations! You guessed the word! The word is #{@secret_word}"
        break
    end

    puts "You have #{@guess_limit - @guess_count} guesses left"
    puts ""
end 

    # Player 2 enters guess
    # Guess is correct or wrong
    # Print out feedback message
    # End loop and print victory message is victory conditions met
    # End loop and print defeat message after guess count = guess limit and victory conditions not met

